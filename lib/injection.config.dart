// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/weather/data/datasources/weather_remote_datasource.dart'
    as _i3;
import 'features/weather/data/repositories/weather_repository_impl.dart' as _i6;
import 'features/weather/domain/repositories/weather_repository.dart' as _i5;
import 'features/weather/domain/usecases/get_weather_usecase.dart' as _i7;
import 'features/weather/presentation/bloc/weather_bloc.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.WeatherRemoteDatasource>(
      () => _i3.WeatherRemoteDatasourceImpl(dio: get<_i4.Dio>()));
  gh.factory<_i5.WeatherRepository>(() => _i6.WeatherRepositoryImpl(
      remoteDatasource: get<_i3.WeatherRemoteDatasource>()));
  gh.factory<_i7.GetWeatherUsecase>(
      () => _i7.GetWeatherUsecase(get<_i5.WeatherRepository>()));
  gh.factory<_i8.WeatherBloc>(
      () => _i8.WeatherBloc(get<_i7.GetWeatherUsecase>()));
  return get;
}
