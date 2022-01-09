// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i3;
import 'application/auth/signup/signup_bloc.dart' as _i9;
import 'application/product/product_bloc.dart' as _i8;
import 'domain/auth/i_auth_facade.dart' as _i4;
import 'domain/product/i_product_repository.dart' as _i6;
import 'infrastructure/auth/auth_facade.dart' as _i5;
import 'infrastructure/product/product_repository.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc());
  gh.lazySingleton<_i4.IAuthFacade>(() => _i5.AuthFacade());
  gh.lazySingleton<_i6.IProductRepository>(() => _i7.ProductRepository());
  gh.factory<_i8.ProductBloc>(
      () => _i8.ProductBloc(get<_i6.IProductRepository>()));
  gh.factory<_i9.SignupBloc>(() => _i9.SignupBloc(get<_i4.IAuthFacade>()));
  return get;
}
