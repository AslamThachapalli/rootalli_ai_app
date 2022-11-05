// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'core/injectable_module/http_injectable_module.dart' as _i10;
import 'home/repository/home_repository.dart' as _i4;
import 'home/services/home_repository_impl.dart' as _i5;
import 'home/viewModel/home_view_model.dart' as _i6;
import 'rehab/repository/rehab_repository.dart' as _i7;
import 'rehab/services/rehab_repository_impl.dart' as _i8;
import 'rehab/viewModel/rehab_view_model.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final httpInjectableModule = _$HttpInjectableModule();
  gh.lazySingleton<_i3.Client>(() => httpInjectableModule.client);
  gh.lazySingleton<_i4.HomeRepository>(
      () => _i5.HomeRepositoryImpl(get<_i3.Client>()));
  gh.factory<_i6.HomeViewModel>(
      () => _i6.HomeViewModel(get<_i4.HomeRepository>()));
  gh.lazySingleton<_i7.RehabRepository>(
      () => _i8.RehabRepositoryImpl(get<_i3.Client>()));
  gh.factory<_i9.RehabViewModel>(
      () => _i9.RehabViewModel(get<_i7.RehabRepository>()));
  return get;
}

class _$HttpInjectableModule extends _i10.HttpInjectableModule {}
