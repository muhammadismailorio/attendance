import 'package:equatable/equatable.dart';

class Pickup extends Equatable {
  final String pickupNo,
      acNo,
      consigneeName,
      address,
      contactNo,
      currentStatus,
      lat,
      lng;

  const Pickup({
    required this.pickupNo,
    required this.acNo,
    required this.consigneeName,
    required this.address,
    required this.contactNo,
    required this.currentStatus,
    required this.lat,
    required this.lng,
  });

  factory Pickup.initial() => const Pickup(
        pickupNo: '',
        acNo: '',
        consigneeName: '',
        address: '',
        contactNo: '',
        currentStatus: '',
        lat: '',
        lng: '',
      );

  @override
  List<Object?> get props => [
        pickupNo,
        acNo,
        consigneeName,
        address,
        contactNo,
        currentStatus,
        lat,
        lng
      ];

  @override
  bool get stringify => true;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pickupNo': pickupNo,
      'acNo': acNo,
      'consigneeName': consigneeName,
      'address': address,
      'contactNo': contactNo,
      'currentStatus': currentStatus,
      'lat': lat,
      'lng': lng,
    };
  }

  factory Pickup.fromMap(Map<String, dynamic> map) {
    return Pickup(
      pickupNo: map['pickupNo'],
      acNo: map['acNo'],
      consigneeName: map['consigneeName'],
      address: map['address'],
      contactNo: map['contactNo'],
      currentStatus: map['currentStatus'],
      lat: map['lat'],
      lng: map['lng'],
    );
  }
}
