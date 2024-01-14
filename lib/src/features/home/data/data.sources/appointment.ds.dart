import 'package:flutter_test_app/gen/assets.gen.dart';
import 'package:flutter_test_app/gen/locator.gen.dart';
import 'package:flutter_test_app/src/features/home/data/helpers/asset.helper.dart';
import 'package:flutter_test_app/src/features/home/data/wrappers/network_call_wrapper.dart';
import 'package:flutter_test_app/src/features/home/domain/appointment.model.dart';
import 'package:injectable/injectable.dart';

final AppointmentDs appointmentDs = sl<AppointmentDs>();

abstract class AppointmentDs {
  Future<List<Appointment>> getCurrentAppointments();
  Future<List<Appointment>> getUpcomingAppointments();
}

@LazySingleton(as: AppointmentDs)
class AppointmentDsImpl implements AppointmentDs {
  @override
  Future<List<Appointment>> getCurrentAppointments() async {
    return await asyncFunctionWrapper.handleAsyncNetworkCall(() async {
      final response =
          await jsonService.loadJsonAsset(Assets.json.currentAppointment);

      return (response['data'] as List)
          .map((e) => Appointment.fromJson(e))
          .toList();
    });
  }

  @override
  Future<List<Appointment>> getUpcomingAppointments() async {
    return await asyncFunctionWrapper.handleAsyncNetworkCall(() async {
      final response =
          await jsonService.loadJsonAsset(Assets.json.upcomingAppointment);
      return (response['data'] as List)
          .map((e) => Appointment.fromJson(e))
          .toList();
    });
  }
}
