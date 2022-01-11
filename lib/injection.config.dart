// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/signup/signup_bloc.dart' as _i8;
import 'application/product/product_bloc.dart' as _i7;
import 'domain/auth/i_auth_facade.dart' as _i3;
import 'domain/product/i_product_repository.dart' as _i5;
import 'infrastructure/auth/auth_facade.dart' as _i4;
import 'infrastructure/product/product_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(() => _i4.AuthFacade());
  gh.lazySingleton<_i5.IProductRepository>(() => _i6.ProductRepository());
  gh.factory<_i7.ProductBloc>(
      () => _i7.ProductBloc(get<_i5.IProductRepository>()));
  gh.factory<_i8.SignupBloc>(() => _i8.SignupBloc(get<_i3.IAuthFacade>()));
  return get;
}
