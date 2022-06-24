import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weatherapp/features/weather/domain/entities/weather_entity.dart';
import 'package:weatherapp/features/weather/domain/usecases/get_weather_usecase.dart';
import 'package:weatherapp/features/weather/presentation/bloc/weather_bloc.dart';

class MockGetWeatherUsecase extends Mock implements GetWeatherUsecase {}


void main() {
  late MockGetWeatherUsecase mockGetWeatherUsecase;
  late WeatherBloc bloc;

  setUpAll(() {
    mockGetWeatherUsecase = MockGetWeatherUsecase();

    bloc = WeatherBloc(
      mockGetWeatherUsecase,
    );
  });

  test('initital State should be WeatherState.loaded of mockWeather', () async {
    expect(
        bloc.state, equals(WeatherState.loaded(weather: bloc.state.weather)));
  });

  group('Get Weather', () {
    const String tCity = 'Kibray';
    final tWeather = Weather(
      cityName: 'Tashkent',
      icon: 'icon',
      condition: 'condition',
      temp: 15,
      wind: 15,
      humidity: 15,
      windDir: 'windDir',
      pressure: 15,
      precip: 15,
      lastUpdate: DateTime.now(),
      gust: 15,
      uv: 15,
    );

    blocTest<WeatherBloc, WeatherState>(
      'Emits Weather Loading and WeatherLoaded when successfull',
      build: () {
        when(() => mockGetWeatherUsecase.call(const Params(city: tCity)))
            .thenAnswer((_) async => Right(tWeather));

        return WeatherBloc(
          mockGetWeatherUsecase,
        );
      },
      act: (bloc) => bloc.add(const WeatherEvent.loadApi(city: tCity)),
      expect: () => [
        WeatherState.loading(weather: Weather.mockWeather),
        WeatherState.loaded(weather: tWeather)
      ],
    );
  });
}
