import 'package:blueex_emp_app_flutter/features/user/data/model/user_model.dart';
import 'package:blueex_emp_app_flutter/shared/network/network.dart';
import 'package:platform_device_id/platform_device_id.dart';

class UserRemoteDataSource {
  Future<UserModel> login(String empId) async {
    String? deviceId = await PlatformDeviceId.getDeviceId;

    Map<String, dynamic> data = {
      "user_name": empId,
      "application_tag": "BLX-ERP-MOB",
      "device_id": deviceId.toString(),
    };

    try {
      var res = await NetworkHelper.request(
        method: 'POST',
        url: 'auth/login',
        data: data,
      );

      UserModel user = UserModel.fromJson(res);
      print(user);
      return user;
    } catch (e) {
      rethrow;
    }
  }
}
