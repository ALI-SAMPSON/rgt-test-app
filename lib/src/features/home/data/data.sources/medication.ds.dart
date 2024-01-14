import 'package:flutter_test_app/gen/assets.gen.dart';
import 'package:flutter_test_app/src/features/home/data/helpers/asset.helper.dart';
import 'package:flutter_test_app/src/features/home/data/wrappers/network_call_wrapper.dart';
import 'package:flutter_test_app/src/features/home/domain/medical.test.model.dart';
import 'package:flutter_test_app/src/features/home/domain/medication.model.dart';
import 'package:injectable/injectable.dart';

abstract class MedicationDs {
  Future<List<MedicalTest>> getAllMedicalTests();
  Future<List<Medication>> getAllMedications();
}

@LazySingleton(as: MedicationDs)
class MedicationDsImpl implements MedicationDs {
  @override
  Future<List<MedicalTest>> getAllMedicalTests() async {
    return await asyncFunctionWrapper.handleAsyncNetworkCall(() async {
      final response = await jsonService.loadJsonAsset(Assets.json.medicalTest);
      return (response['data'] as List)
          .map((e) => MedicalTest.fromJson(e))
          .toList();
    });
  }

  @override
  Future<List<Medication>> getAllMedications() async {
    return await asyncFunctionWrapper.handleAsyncNetworkCall(() async {
      final response = await jsonService.loadJsonAsset(Assets.json.medication);
      return (response['data'] as List)
          .map((e) => Medication.fromJson(e))
          .toList();
    });
  }
}
