import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test_app/src/features/home/application/appointment.service.dart';
import 'package:flutter_test_app/src/features/home/application/medication.service.dart';
import 'package:flutter_test_app/src/features/home/domain/medical.test.model.dart';
import 'package:flutter_test_app/src/features/home/domain/medication.model.dart';
import 'package:flutter_test_app/src/features/home/domain/appointment.model.dart';
import 'package:flutter_test_app/src/utils/helpers/base.model.state.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class THomeVm extends ChangeNotifier {
  bool expanded = false;
  int _currentIndex = 0;
  int _currentTestPageIndex = 0;
  final CarouselController carouselController = CarouselController();

  int get currentIndex => _currentIndex;
  int get currentTestPageIndex => _currentTestPageIndex;

  BaseModelState<List<Medication>> medicationState =
      BaseModelState<List<Medication>>();
  BaseModelState<List<MedicalTest>> medicalTestState =
      BaseModelState<List<MedicalTest>>();
  BaseModelState<List<Appointment>> upcomingAppointmentState =
      BaseModelState<List<Appointment>>();
  BaseModelState<List<Appointment>> currentAppointmentState =
      BaseModelState<List<Appointment>>();

  onPageChanged(index, reason) {
    _currentIndex = index;
    notifyListeners();
  }

  onTestPageChanged(index, reason) {
    _currentTestPageIndex = index;
    notifyListeners();
  }

  /// Function call to [appointment.service]
  /// this triggers a call to the respository -> datasources
  /// to fetch [UpcomingAppointments] & populate on the UI
  Future<void> getUpcomingAppointments() async {
    upcomingAppointmentState.loading();
    final results = await appointmentService.getUpcomingAppointments();
    results.fold((err) => upcomingAppointmentState.error(err.getMessage()),
        (res) {
      upcomingAppointmentState.success(res);
    });
    notifyListeners();
  }

  /// Function call to [appointment.service]
  /// this triggers a call to the respository -> datasources
  /// to fetch [CurrentAppointments] & populate on the UI
  Future<void> getCurrentAppointments() async {
    currentAppointmentState.loading();
    final results = await appointmentService.getCurrentAppointments();
    results.fold((err) => currentAppointmentState.error(err.getMessage()),
        (res) {
      currentAppointmentState.success(res);
    });
    notifyListeners();
  }

  /// Function call to [medication.service]
  /// this triggers a call to the respository -> datasources
  /// to fetch [AllMedicalTests] & populate on the UI
  Future<void> getAllMedicalTests() async {
    medicalTestState.loading();
    final results = await medicationService.getAllMedicalTests();
    results.fold((err) => medicalTestState.error(err.getMessage()), (res) {
      medicalTestState.success(res);
    });
    notifyListeners();
  }

  /// Function call to [medication.service]
  /// this triggers a call to the respository -> datasources
  /// to fetch [AllMedications] & populate on the UI
  Future<void> getAllMedications() async {
    medicationState.loading();
    final results = await medicationService.getAllMedications();
    results.fold((err) => medicationState.error(err.getMessage()), (res) {
      medicationState.success(res);
    });
    notifyListeners();
  }
}
