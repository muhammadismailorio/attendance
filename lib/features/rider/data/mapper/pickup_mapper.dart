import 'package:blueex_emp_app_flutter/features/rider/data/model/pickup_model.dart';
import 'package:blueex_emp_app_flutter/features/rider/domain/entity/pickup_entity.dart';
import 'package:blueex_emp_app_flutter/shared/mapper/mapper.dart';

class PickupMapper extends Mapper<Pickup, PickupModel> {
  @override
  Pickup mapModeltoEntity(PickupModel model) {
    Pickup user = Pickup(
      pickupNo: model.pickupNo,
      acNo: model.acNo,
      consigneeName: model.consigneeName,
      address: model.address,
      contactNo: model.contactNo,
      currentStatus: model.currentStatus,
      lat: model.lat,
      lng: model.lng,
    );
    return user;
  }
}
