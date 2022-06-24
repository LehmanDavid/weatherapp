import '../../domain/entities/weather_entity.dart';

class WeatherModel extends Weather {
  const WeatherModel(
      {required cityName,
      required icon,
      required condition,
      required temp,
      required wind,
      required humidity,
      required windDir,
      required pressure,
      required precip,
      required lastUpdate,
      required gust,
      required uv})
      : super(
            cityName: cityName,
            icon: icon,
            condition: condition,
            temp: temp,
            wind: wind,
            humidity: humidity,
            windDir: windDir,
            pressure: pressure,
            precip: precip,
            lastUpdate: lastUpdate,
            gust: gust,
            uv: uv);

  factory WeatherModel.fromJSON(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      icon: json['current']['condition']['icon'],
      condition: json['current']['condition']['text'],
      temp: json['current']['temp_c'],
      wind: json['current']['wind_kph'],
      humidity: json['current']['humidity'],
      windDir: json['current']['wind_dir'],
      pressure: json['current']['pressure_mb'],
      precip: json['current']['precip_mm'],
      lastUpdate: DateTime.fromMillisecondsSinceEpoch( json['current']['last_updated_epoch']),
      gust: json['current']['gust_kph'],
      uv: json['current']['uv'],
    );
  }
}
