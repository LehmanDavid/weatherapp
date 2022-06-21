import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weatherapp/core/error/failures.dart';
import 'package:weatherapp/features/weather/data/datasources/weather_remote_datasource.dart';
import 'package:weatherapp/features/weather/data/models/weather_model.dart';
import '../../../../fixtures/fixture_reader.dart';

class MockDioClient extends Mock implements Dio {}

void main() {
  late MockDioClient mockDioClient;

  late WeatherRemoteDatasourceImpl datasourceImpl;

  setUpAll(() {
    mockDioClient = MockDioClient();
    datasourceImpl = WeatherRemoteDatasourceImpl(dio: mockDioClient);
  });

  group('GetWeather', () {
    const tCity = 'Kibray';
    final tWeatherModel = WeatherModel.fromJSON(
      jsonDecode(
        fixture('weather.json'),
      ),
    );

    test('should perform get request on the given url', () async {
      when(
        () => mockDioClient.get(any()),
      ).thenAnswer(
        (_) async => Response<Map>(
          statusCode: 200,
          data: jsonDecode(fixture('weather.json')),
          requestOptions: RequestOptions(
            path:
                'http://api.weatherapi.com/v1/current.json?key=6bd5a41f756d4100b3365659221306&q=$tCity&aqi=no',
          ),
        ),
      );

      await datasourceImpl.getWeather(tCity);

      verify(
        () => mockDioClient.get(
          'http://api.weatherapi.com/v1/current.json?key=6bd5a41f756d4100b3365659221306&q=$tCity&aqi=no',
        ),
      );
    });

    test('should throw ServerException wnen status code is 404', () async {
      when(() => mockDioClient.get(any())).thenAnswer(
        (invocation) async => Response<Map>(
          statusCode: 404,
          data: jsonDecode(fixture('weather.json')),
          requestOptions: RequestOptions(
            path:
                'http://api.weatherapi.com/v1/current.json?key=6bd5a41f756d4100b3365659221306&q=$tCity&aqi=no',
          ),
        ),
      );
      final response = datasourceImpl.getWeather(tCity);

      expect(() => response, throwsA(const TypeMatcher<ServerException>()));
    });

    test('should perform get operation when status code is 200', () async {
      when(() => mockDioClient.get(any())).thenAnswer(
        (_) async => Response<Map>(
          statusCode: 200,
          data: jsonDecode(fixture('weather.json')),
          requestOptions: RequestOptions(
            path:
                'http://api.weatherapi.com/v1/current.json?key=6bd5a41f756d4100b3365659221306&q=$tCity&aqi=no',
          ),
        ),
      );
      final response = await datasourceImpl.getWeather(tCity);

      expect(response, tWeatherModel);
    });
  });
}
