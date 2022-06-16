import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:weatherapp/features/weather/data/models/weather_model.dart';
import 'package:weatherapp/features/weather/domain/entities/weather_entity.dart';

import '../../../../fixtures/fixture_reader.dart';


void main() {
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

  test('Should be a subclass of Weather Entity', () async {
    expect(tWeatherModel, isA<Weather>());
  });

  group('FromJSON', () {
    test('should return valid model', () async {
      final Map<String, dynamic> jsonMap = jsonDecode(fixture('weather.json'));
      final result = WeatherModel.fromJSON(jsonMap);
      expect(result, tWeatherModel);
    });
  });
}
