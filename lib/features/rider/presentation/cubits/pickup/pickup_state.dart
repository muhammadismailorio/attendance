part of 'pickup_cubit.dart';

class PickupState extends Equatable {
  final List<Pickup> pickups;

  const PickupState({
    required this.pickups,
  });

  factory PickupState.initial() => const PickupState(pickups: []);

  @override
  List<Object> get props => [pickups];

  @override
  bool get stringify => true;

  PickupState copyWith({
    List<Pickup>? pickups,
  }) {
    return PickupState(
      pickups: pickups ?? this.pickups,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pickups': pickups.map((x) => x.toMap()).toList(),
    };
  }

  factory PickupState.fromMap(Map<String, dynamic> map) {
    return PickupState(
      pickups: List<Pickup>.from(map['pickups']?.map((x) => Pickup.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PickupState.fromJson(String source) =>
      PickupState.fromMap(json.decode(source));
}
