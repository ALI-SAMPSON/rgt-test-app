// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../src/features/home/application/appointment.service.dart' as _i5;
import '../src/features/home/application/medication.service.dart' as _i12;
import '../src/features/home/data/data.sources/appointment.ds.dart' as _i3;
import '../src/features/home/data/data.sources/medication.ds.dart' as _i10;
import '../src/features/home/data/helpers/asset.helper.dart' as _i9;
import '../src/features/home/data/network/network.info.dart' as _i13;
import '../src/features/home/data/repositories/appointment.repo.dart' as _i4;
import '../src/features/home/data/repositories/medication.repo.dart' as _i11;
import '../src/features/home/data/wrappers/catch_error_wrapper.dart' as _i7;
import '../src/features/home/data/wrappers/custom_repository_wrapper.dart'
    as _i8;
import '../src/features/home/data/wrappers/network_call_wrapper.dart' as _i6;
import '../src/features/home/presentation/view.models/home.vm.dart' as _i14;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AppointmentDs>(() => _i3.AppointmentDsImpl());
    gh.lazySingleton<_i4.AppointmentRepo>(
        () => _i4.AppointmentRepoImpl(gh<_i3.AppointmentDs>()));
    gh.lazySingleton<_i5.AppointmentService>(
        () => _i5.AppointmentServiceImpl(gh<_i4.AppointmentRepo>()));
    gh.lazySingleton<_i6.AsyncFunctionWrapper>(
        () => _i6.AsyncFunctionWrapperImpl());
    gh.lazySingleton<_i7.CatchApiErrorWrapper>(
        () => _i7.CatchApiErrorWrapperImpl());
    gh.lazySingleton<_i8.CustomRepositoryWrapper>(
        () => _i8.CustomRepositoryWrapperImpl());
    gh.lazySingleton<_i9.JsonService>(() => _i9.JsonServiceImpl());
    gh.lazySingleton<_i10.MedicationDs>(() => _i10.MedicationDsImpl());
    gh.lazySingleton<_i11.MedicationRepo>(
        () => _i11.MedicationRepoImpl(gh<_i10.MedicationDs>()));
    gh.lazySingleton<_i12.MedicationService>(
        () => _i12.MedicationServiceImpl(gh<_i11.MedicationRepo>()));
    gh.lazySingleton<_i13.NetworkInfo>(() => _i13.NetworkInfoImpl());
    gh.lazySingleton<_i14.THomeVm>(() => _i14.THomeVm());
    return this;
  }
}
