import 'package:blueex_emp_app_flutter/features/rider/domain/entity/pickup_status_entity.dart';

class PickupStatusModel extends PickupStatus {
  const PickupStatusModel({
    required String status,
    required String message,
  }) : super(
          status: status,
          message: message,
        );

  factory PickupStatusModel.fromJson(Map<String, dynamic> json) {
    return PickupStatusModel(
      status: json['status'],
      message: json['message'],
    );
  }
}
