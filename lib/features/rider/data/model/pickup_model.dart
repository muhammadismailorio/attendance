import 'package:blueex_emp_app_flutter/features/rider/domain/entity/pickup_entity.dart';

class PickupModel extends Pickup {
  const PickupModel({
    required String pickupNo,
    required String acNo,
    required String consigneeName,
    required String address,
    required String contactNo,
    required String currentStatus,
    required String lat,
    required String lng,
  }) : super(
          pickupNo: pickupNo,
          acNo: acNo,
          consigneeName: consigneeName,
          address: address,
          contactNo: contactNo,
          currentStatus: currentStatus,
          lat: lat,
          lng: lng,
        );

  factory PickupModel.fromJson(Map<String, dynamic> json) {
    return PickupModel(
      pickupNo: json['PICKUP_NO'],
      acNo: json['SHP_AC'],
      consigneeName: json['CUSTOMER_NAME'],
      address: json['ADDRESS'],
      contactNo: json['CONTACT_NO'],
      currentStatus: json['CURRENT_STATUS'],
      lat: json['LAT'],
      lng: json['LNG'],
    );
  }
}
