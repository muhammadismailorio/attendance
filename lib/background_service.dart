import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:blueex_emp_app_flutter/resources/db.dart';
import 'package:blueex_emp_app_flutter/resources/db_background.dart';
import 'package:drift/isolate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'package:geolocator/geolocator.dart';
import 'package:blueex_emp_app_flutter/shared/location.dart';

Future<void> initializeService() async {
  final service = FlutterBackgroundService();

  /// OPTIONAL, using custom notification channel id
  const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'my_foreground', // id
    'MY FOREGROUND SERVICE', // title
    description:
        'This channel is used for important notifications.', // description
    importance: Importance.low, // importance must be at low or higher level
  );

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  if (Platform.isIOS) {
    await flutterLocalNotificationsPlugin.initialize(
      const InitializationSettings(
        iOS: DarwinInitializationSettings(),
      ),
    );
  }

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await service.configure(
    androidConfiguration: AndroidConfiguration(
      // this will be executed when app is in foreground or background in separated isolate
      onStart: onStart,

      // auto start service
      autoStart: true,
      isForegroundMode: true,

      notificationChannelId: 'my_foreground',
      initialNotificationTitle: 'BlueEX',
      initialNotificationContent: 'Initializing',
      foregroundServiceNotificationId: 888,
    ),
    iosConfiguration: IosConfiguration(
      // auto start service
      autoStart: true,

      // this will be executed when app is in foreground in separated isolate
      onForeground: onStart,

      // you have to enable background fetch capability on xcode project
      onBackground: onIosBackground,
    ),
  );

  service.startService();
}

// to ensure this is executed
// run app from xcode, then from xcode menu, select Simulate Background Fetch

@pragma('vm:entry-point')
Future<bool> onIosBackground(ServiceInstance service) async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();

  return true;
}

@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  // Only available for flutter 3.0.0 and later
  DartPluginRegistrant.ensureInitialized();

  /// OPTIONAL when use custom notification
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  if (service is AndroidServiceInstance) {
    service.on('setAsForeground').listen((event) {
      service.setAsForegroundService();
    });

    service.on('setAsBackground').listen((event) {
      service.setAsBackgroundService();
    });
  }

  service.on('stopService').listen((event) {
    service.stopSelf();
  });

  bool isFound = false;

  final isolate = await DriftIsolate.spawn(backgroundConnection);

  final connection = await isolate.connect();

  final db = MyDatabase.connect(connection);

  // Stream<List<StationsEntityData>> stations =
  //     db.select(db.stationsEntity).watch();

  // Future<List<StationsEntityData>> printStream(
  //     Stream<List<StationsEntityData>> stream) async {
  //   List<StationsEntityData> myStations = [];
  //   try {
  //     await for (final stations in stream) {
  //       // for (var element in stations) {
  //       //   print("stations from $element");
  //       // }
  //       myStations = stations;
  //     }
  //     return myStations;
  //   } catch (e) {
  //     print("station error: $e");
  //     return myStations;
  //   }
  //   // return sum;
  // }

  // bring to foreground
  Timer.periodic(const Duration(seconds: 1), (timer) async {
    Position? position;

    // List<StationsEntityData> myStations = await printStream(stations);
    // print("my stations $myStations");

    await determinePosition();
    await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    ).then((Position pos) {
      position = pos;
    }).catchError((e) {});
    double distanceInMeters = 0.0;

    distanceInMeters = Geolocator.distanceBetween(
      position?.latitude ?? 0,
      position?.longitude ?? 0,
      24.8691546,
      67.0875276,
    );

    if (distanceInMeters <= 100) {
      if (!isFound) {
        // await CreateNotificationUseCase(
        //   repository: AttendanceDataRepositoryImpl(
        //     attendanceDataMapper: AttendanceDataMapper(),
        //     attendanceDataRemoteDataSource: AttendanceDataRemoteDataSource(),
        //   ),
        // ).call(NotificationParams(token: token, type: 'check_in'));
      }
      isFound = true;
    } else {
      isFound = false;
    }

    String notificationHeading = 'You are in the Office';
    if (position == null) {
      notificationHeading = 'Your Location is turned off';
    } else if (isFound == false) {
      notificationHeading = 'You are not in the office';
    }

    if (service is AndroidServiceInstance) {
      if (await service.isForegroundService()) {
        /// OPTIONAL for use custom notification
        /// the notification id must be equals with AndroidConfiguration when you call configure() method.
        flutterLocalNotificationsPlugin.show(
          888,
          notificationHeading,
          '$distanceInMeters',
          const NotificationDetails(
            android: AndroidNotificationDetails(
              'my_foreground',
              'MY FOREGROUND SERVICE',
              icon: '@mipmap/ic_launcher',
              ongoing: true,
            ),
          ),
        );
      }
    }

    /// you can see this log in logcat
    print('FLUTTER BACKGROUND SERVICE: ${DateTime.now()}');

    service.invoke(
      'update',
      {
        "current_date": DateTime.now().toIso8601String(),
      },
    );
  });
}
