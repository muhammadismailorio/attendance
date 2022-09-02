import 'package:blueex_emp_app_flutter/features/rider/data/model/pickup_model.dart';
import 'package:blueex_emp_app_flutter/features/rider/data/model/pickup_status_model.dart';
import 'package:blueex_emp_app_flutter/shared/network/network.dart';
import 'package:blueex_emp_app_flutter/shared/params/pickup_params.dart';

class PickupRemoteDataSource {
  Future<List<PickupModel>> getPickups(String token) async {
    try {
      var res = await NetworkHelper.request(
        url: 'revamp_apis/pickupall.php',
        token: token,
        method: 'POST',
      );

      List<PickupModel> pickups = res["pickup"]
          .map<PickupModel>((json) => PickupModel.fromJson(json))
          .toList();

      return pickups;
    } catch (e) {
      rethrow;
    }
  }

  Future<PickupStatusModel> pickupStatus(PickupParams params) async {
    try {
      var res = await NetworkHelper.request(
        url: 'revamp_apis/pickupstatus.php',
        token: params.token,
        method: 'POST',
        data: {
          "status": params.status,
          "message": params.message,
          "pickup_no": params.pickupNo,
        },
      );

      PickupStatusModel data = PickupStatusModel.fromJson(res);

      return data;
    } catch (e) {
      rethrow;
    }
  }
}
