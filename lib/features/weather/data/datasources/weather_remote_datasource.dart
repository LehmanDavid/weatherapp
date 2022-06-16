import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../models/weather_model.dart';

abstract class WeatherRemoteDatasource {
  Future<WeatherModel> getWeather(String city);
}

@Injectable(as: WeatherRemoteDatasource)
class WeatherRemoteDatasourceImpl implements WeatherRemoteDatasource {
  final Dio dio;

  WeatherRemoteDatasourceImpl({required this.dio});
  @override
  Future<WeatherModel> getWeather(String city) async {
    final response = await dio.get(
        'http://api.weatherapi.com/v1/current.json?key=6bd5a41f756d4100b3365659221306&q=$city&aqi=no');
    if (response.statusCode == 200) {
      return WeatherModel.fromJSON(response.data);
    } else {
      throw ServerException();
    }
  }
}
