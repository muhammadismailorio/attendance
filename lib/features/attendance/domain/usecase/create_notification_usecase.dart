import 'package:blueex_emp_app_flutter/features/attendance/domain/repository/attendance_data_repository_impl.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';
import 'package:blueex_emp_app_flutter/shared/params/notification_params.dart';
import 'package:blueex_emp_app_flutter/shared/usecase/usecase.dart';
import 'package:dartz/dartz.dart';

class CreateNotificationUseCase extends UseCase<bool, NotificationParams> {
  final AttendanceDataRepositoryImpl repository;

  CreateNotificationUseCase({required this.repository});

  @override
  Future<Either<Failure, bool>> call(NotificationParams params) {
    return repository.createNotification(
        token: params.token, type: params.type);
  }
}
