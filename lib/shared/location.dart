import 'package:geolocator/geolocator.dart';

Future determinePosition() async {
  LocationPermission permission;
  permission = await Geolocator.checkPermission();
  print('permission $permission');

  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return null;
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return null;
  }
}
