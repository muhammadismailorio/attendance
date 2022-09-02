import 'package:blueex_emp_app_flutter/features/rider/data/model/pickup_model.dart';
import 'package:blueex_emp_app_flutter/features/rider/data/model/pickup_status_model.dart';
import 'package:blueex_emp_app_flutter/features/rider/domain/entity/pickup_entity.dart';
import 'package:blueex_emp_app_flutter/features/rider/domain/entity/pickup_status_entity.dart';
import 'package:blueex_emp_app_flutter/shared/mapper/mapper.dart';

class PickupStatusMapper extends Mapper<PickupStatus, PickupStatusModel> {
  @override
  PickupStatus mapModeltoEntity(PickupStatusModel model) {
    PickupStatus pickupStatus = PickupStatus(
      status: model.status,
      message: model.message,   
    );
    return pickupStatus;
  }
}
