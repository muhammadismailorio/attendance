import 'package:equatable/equatable.dart';

class PickupStatus extends Equatable {
  final String status;
  final String message;

  const PickupStatus({required this.status, required this.message});

  factory PickupStatus.initial() => const PickupStatus(
        status: '',
        message: '',
      );

  @override
  List<Object?> get props => [status, message];
}
