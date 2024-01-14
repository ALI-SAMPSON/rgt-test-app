import 'package:dartz/dartz.dart';
import 'package:flutter_test_app/src/features/home/data/data.sources/appointment.ds.dart';
import 'package:flutter_test_app/src/features/home/data/errors/failure.dart';
import 'package:flutter_test_app/src/features/home/data/wrappers/custom_repository_wrapper.dart';
import 'package:flutter_test_app/src/features/home/domain/appointment.model.dart';
import 'package:injectable/injectable.dart';

abstract class AppointmentRepo {
  Future<Either<TFailure, List<Appointment>>> getCurrentAppointments();
  Future<Either<TFailure, List<Appointment>>> getUpcomingAppointments();
}

@LazySingleton(as: AppointmentRepo)
class AppointmentRepoImpl implements AppointmentRepo {
  final AppointmentDs appointmentDs;
  AppointmentRepoImpl(this.appointmentDs);

  @override
  Future<Either<TFailure, List<Appointment>>> getCurrentAppointments() async {
    return await customRepositoryWrapper.wrapRepositoryFunction(
      function: () async => await appointmentDs.getCurrentAppointments(),
    );
    //return await appointmentDs.getCurrentAppointments();
    // try {
    //   final result = await appointmentDs.getCurrentAppointments();
    //   return Right(result);
    // } catch (err, stackTrace) {
    //   print('Error: $err');
    //   return Left(await catchApiErrorWrapper.handleError(
    //       err: err, stackTrace: stackTrace));
    // }
  }

  @override
  Future<Either<TFailure, List<Appointment>>> getUpcomingAppointments() async {
    return await customRepositoryWrapper.wrapRepositoryFunction(
      function: () async => await appointmentDs.getUpcomingAppointments(),
    );
    //return await appointmentDs.getUpcomingAppointments();
  }
}
