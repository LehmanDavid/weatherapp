import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/exceptions.dart';
import '../../domain/entities/weather_entity.dart';
import '../../domain/usecases/get_weather_usecase.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetWeatherUsecase _weatherUsecase;
  final Converter<String, Either<Failure, String>> _converter;

  WeatherBloc(this._weatherUsecase, this._converter)
      : super(WeatherState.loaded(weather: Weather.mockWeather)) {
    on<WeatherEvent>(getWeather);
  }

  FutureOr<void> getWeather(WeatherEvent event, emit) async {
    final inputEither = Right(event.city);

    await inputEither.fold(
      (failure) async => emit(WeatherState.error(
          weather: state.weather,
          message: 'couldnt perform the operation Get Weather')),
      (city) async {
        emit(WeatherState.loading(weather: state.weather));

        final failureOrWeatherInfo = await _weatherUsecase(Params(city: city));

        await failureOrWeatherInfo.fold(
          (failure) async {
            emit(
              WeatherState.error(
                  message: 'Something went wrong with your request',
                  weather: state.weather),
            );
          },
          (weather) async {
            emit(WeatherState.loaded(weather: weather));
          },
        );
      },
    );
  }
}
