import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  final String cityName;
  final String icon;
  final String condition;
  final num temp;
  final num wind;
  final num humidity;
  final String windDir;
  final num pressure;
  final num precip;
  final DateTime lastUpdate;
  final num gust;
  final num uv;

  static Weather mockWeather = Weather(
    cityName: 'Mock City',
    icon: '//cdn.weatherapi.com/weather/64x64/day/113.png',
    condition: 'Sunny',
    temp: 9.0,
    wind: 19.1,
    humidity: 81,
    windDir: 'SE',
    gust: 32.0,
    uv: 1.0,
    pressure: 1025.0,
    precip: 0.0,
    lastUpdate: DateTime.now(),
  );

  Weather({
    required this.cityName,
    required this.icon,
    required this.condition,
    required this.temp,
    required this.wind,
    required this.humidity,
    required this.windDir,
    required this.pressure,
    required this.precip,
    required this.lastUpdate,
    required this.gust,
    required this.uv,
  });

  @override
  List<Object?> get props => [
        cityName,
        icon,
        condition,
        temp,
        wind,
        humidity,
        windDir,
        pressure,
        precip,
        lastUpdate,
        gust,
        uv
      ];
}
