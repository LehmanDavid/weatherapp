// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:convert' as _i3;

import 'package:dartz/dartz.dart' as _i4;
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/error/exceptions.dart' as _i5;
import 'core/helper/converter.dart' as _i6;
import 'features/weather/data/datasources/weather_remote_datasource.dart'
    as _i7;
import 'features/weather/data/repositories/weather_repository_impl.dart'
    as _i10;
import 'features/weather/domain/repositories/weather_repository.dart' as _i9;
import 'features/weather/domain/usecases/get_weather_usecase.dart' as _i11;
import 'features/weather/presentation/bloc/weather_bloc.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.Converter<String, _i4.Either<_i5.Failure, String>>>(
      () => _i6.CityConverter());
  gh.factory<_i7.WeatherRemoteDatasource>(
      () => _i7.WeatherRemoteDatasourceImpl(dio: get<_i8.Dio>()));
  gh.factory<_i9.WeatherRepository>(() => _i10.WeatherRepositoryImpl(
      remoteDatasource: get<_i7.WeatherRemoteDatasource>()));
  gh.factory<_i11.GetWeatherUsecase>(
      () => _i11.GetWeatherUsecase(get<_i9.WeatherRepository>()));
  gh.factory<_i12.WeatherBloc>(() => _i12.WeatherBloc(
      get<_i11.GetWeatherUsecase>(),
      get<_i3.Converter<String, _i4.Either<_i5.Failure, String>>>()));
  return get;
}
