import 'package:blueex_emp_app_flutter/features/attendance/data/model/attendance_data_model.dart';
import 'package:blueex_emp_app_flutter/shared/network/network.dart';

class AttendanceDataRemoteDataSource {
  Future<List<AttendanceDataModel>> getAttendanceData(
      String token, String date) async {
    Map<String, dynamic> data = {
      "attedance_date": date,
    };

    try {
      var res = await NetworkHelper.request(
        url: 'attendance-app/attendance',
        token: token,
        method: 'POST',
        data: data,
      );

      List<AttendanceDataModel> modules = res
          .map<AttendanceDataModel>(
              (json) => AttendanceDataModel.fromJson(json))
          .toList();

      return modules;
    } catch (e) {
      rethrow;
    }
  }

  Future<AttendanceDataModel> getTodayAttendance(String token) async {
    try {
      var res = await NetworkHelper.request(
        url: 'attendance-app/attendance',
        token: token,
      );

      AttendanceDataModel data = AttendanceDataModel.fromJson(res);

      return data;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> createNotification(String token, String type) async {
     Map<String, dynamic> data = {
      "type": type,
    };

    try {
      var res = await NetworkHelper.request(
        method: "POST",
        url: 'attendance-app/notification',
        token: token,
      );

      return true;
    } catch (e) {
      rethrow;
    }
  }
}
