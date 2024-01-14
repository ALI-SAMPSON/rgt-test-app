import 'package:dartz/dartz.dart';
import 'package:flutter_test_app/gen/locator.gen.dart';
import 'package:flutter_test_app/src/features/home/data/errors/failure.dart';
import 'package:flutter_test_app/src/features/home/data/repositories/appointment.repo.dart';
import 'package:flutter_test_app/src/features/home/domain/appointment.model.dart';
import 'package:injectable/injectable.dart';

final AppointmentService appointmentService = sl<AppointmentService>();

abstract class AppointmentService {
  Future<Either<TFailure, List<Appointment>>> getCurrentAppointments();
  Future<Either<TFailure, List<Appointment>>> getUpcomingAppointments();
}

@LazySingleton(as: AppointmentService)
class AppointmentServiceImpl implements AppointmentService {
  final AppointmentRepo appointmentRepo;
  AppointmentServiceImpl(this.appointmentRepo);

  @override
  Future<Either<TFailure, List<Appointment>>> getCurrentAppointments() async {
    return appointmentRepo.getCurrentAppointments();
  }

  @override
  Future<Either<TFailure, List<Appointment>>> getUpcomingAppointments() async {
    return appointmentRepo.getUpcomingAppointments();
  }
}
