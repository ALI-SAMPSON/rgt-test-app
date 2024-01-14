import 'package:dartz/dartz.dart';
import 'package:flutter_test_app/gen/locator.gen.dart';
import 'package:flutter_test_app/src/features/home/data/errors/failure.dart';
import 'package:flutter_test_app/src/features/home/data/repositories/medication.repo.dart';
import 'package:flutter_test_app/src/features/home/domain/medical.test.model.dart';
import 'package:flutter_test_app/src/features/home/domain/medication.model.dart';
import 'package:injectable/injectable.dart';

final MedicationService medicationService = sl<MedicationService>();

abstract class MedicationService {
  Future<Either<TFailure, List<MedicalTest>>> getAllMedicalTests();
  Future<Either<TFailure, List<Medication>>> getAllMedications();
}

@LazySingleton(as: MedicationService)
class MedicationServiceImpl implements MedicationService {
  final MedicationRepo medicationRepo;
  MedicationServiceImpl(this.medicationRepo);

  @override
  Future<Either<TFailure, List<MedicalTest>>> getAllMedicalTests() async {
    return medicationRepo.getAllMedicalTests();
  }

  @override
  Future<Either<TFailure, List<Medication>>> getAllMedications() async {
    return medicationRepo.getAllMedications();
  }
}
