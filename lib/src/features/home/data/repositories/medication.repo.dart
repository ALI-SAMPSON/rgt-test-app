import 'package:dartz/dartz.dart';
import 'package:flutter_test_app/src/features/home/data/data.sources/medication.ds.dart';
import 'package:flutter_test_app/src/features/home/data/errors/failure.dart';
import 'package:flutter_test_app/src/features/home/data/wrappers/custom_repository_wrapper.dart';
import 'package:flutter_test_app/src/features/home/domain/medical.test.model.dart';
import 'package:flutter_test_app/src/features/home/domain/medication.model.dart';
import 'package:injectable/injectable.dart';

abstract class MedicationRepo {
  Future<Either<TFailure, List<MedicalTest>>> getAllMedicalTests();
  Future<Either<TFailure, List<Medication>>> getAllMedications();
}

@LazySingleton(as: MedicationRepo)
class MedicationRepoImpl implements MedicationRepo {
  final MedicationDs medicationDs;
  MedicationRepoImpl(this.medicationDs);

  @override
  Future<Either<TFailure, List<MedicalTest>>> getAllMedicalTests() async {
    return await customRepositoryWrapper.wrapRepositoryFunction(
      function: () async => await medicationDs.getAllMedicalTests(),
    );
    // try {
    //   final result = await medicationDs.getAllMedicalTests();
    //   return Right(result);
    // } catch (err, stackTrace) {
    //   print('Error: $err');
    //   return Left(await catchApiErrorWrapper.handleError(
    //       err: err, stackTrace: stackTrace));
    // }
  }

  @override
  Future<Either<TFailure, List<Medication>>> getAllMedications() async {
    return await customRepositoryWrapper.wrapRepositoryFunction(
      function: () async => await medicationDs.getAllMedications(),
    );
    // try {
    //   final result = await medicationDs.getAllMedications();
    //   return Right(result);
    // } catch (err, stackTrace) {
    //   print('Error: $err');
    //   return Left(await catchApiErrorWrapper.handleError(
    //       err: err, stackTrace: stackTrace));
    // }
  }
}
