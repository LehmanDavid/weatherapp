import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/helper/usecase.dart';
import '../entities/weather_entity.dart';
import '../repositories/weather_repository.dart';
@injectable
class GetWeatherUsecase implements UseCase<Weather, Params> {
  final WeatherRepository repository;

  GetWeatherUsecase(this.repository);
  @override
  Future<Either<Failure, Weather>> call(Params params)  {
    return  repository.getWeather(params.city);
  }
}

class Params extends Equatable {
  final String city;

  const Params({required this.city});
  @override
  List<Object?> get props => [city];
}
