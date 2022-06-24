import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../entities/weather_entity.dart';

abstract class WeatherRepository {
  Future<Either<Failure, Weather>> getWeather(String city);
}
