import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weatherapp/features/weather/domain/entities/weather_entity.dart';
import 'package:weatherapp/features/weather/domain/repositories/weather_repository.dart';
import 'package:weatherapp/features/weather/domain/usecases/get_weather_usecase.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

void main() {
  late MockWeatherRepository mockWeatherRepository;
  late GetWeatherUsecase getWeatherUsecase;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    getWeatherUsecase = GetWeatherUsecase(mockWeatherRepository);
  });

  const tCity = 'Tashkent';
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

  test('should get Weather entity from the repository', () async {
    when(() => mockWeatherRepository.getWeather(tCity))
        .thenAnswer((_) async => Right(tWeather));

    final result = await getWeatherUsecase(const Params(city: tCity));

    expect(result, Right(tWeather));

    verify(() => mockWeatherRepository.getWeather(tCity));
    verifyNoMoreInteractions(mockWeatherRepository);
  });
}
