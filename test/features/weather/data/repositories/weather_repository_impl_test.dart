import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weatherapp/core/error/exceptions.dart';
import 'package:weatherapp/core/error/failures.dart';
import 'package:weatherapp/features/weather/data/datasources/weather_remote_datasource.dart';
import 'package:weatherapp/features/weather/data/models/weather_model.dart';
import 'package:weatherapp/features/weather/data/repositories/weather_repository_impl.dart';

class MockWeatherDatasource extends Mock implements WeatherRemoteDatasource {}

void main() {
  late WeatherRepositoryImpl repo;
  late MockWeatherDatasource mockWeatherDatasource;
  const tCity = 'Kibray';

  setUp(() {
    mockWeatherDatasource = MockWeatherDatasource();

    repo = WeatherRepositoryImpl(remoteDatasource: mockWeatherDatasource);
  });

  group('description', () {
    final tWeatherModel = WeatherModel(
      cityName: 'Kibray',
      icon: '//cdn.weatherapi.com/weather/64x64/day/113.png',
      condition: 'Sunny',
      temp: 35.0,
      wind: 19.1,
      humidity: 22,
      windDir: 'WNW',
      gust: 15.8,
      uv: 9.0,
      pressure: 1007.0,
      precip: 0.0,
      lastUpdate: DateTime.fromMillisecondsSinceEpoch(1655364600),
    );

    test(
        'should return model when the call of remote datasource is successfull',
        () async {
      when(() => mockWeatherDatasource.getWeather(tCity))
          .thenAnswer((_) async => tWeatherModel);

      final result = await repo.getWeather(tCity);

      expect(result, equals(Right(tWeatherModel)));
    });

    test('should return server failure when the call is unsuccessfull',
        () async {
      when(() => mockWeatherDatasource.getWeather(tCity))
          .thenThrow(ServerException());

      final result = await repo.getWeather(tCity);

      verify(()=>mockWeatherDatasource.getWeather(tCity));
    expect(result, equals(Left(ServerFailure())));
    });
  });
}
