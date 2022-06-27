import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/exceptions.dart';
import '../../domain/entities/weather_entity.dart';
import '../../domain/repositories/weather_repository.dart';
import '../datasources/weather_remote_datasource.dart';
import '../models/weather_model.dart';

@Injectable(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDatasource remoteDatasource;

  WeatherRepositoryImpl({required this.remoteDatasource});
  @override
  Future<Either<Failure, Weather>> getWeather(String city) {
    return _getWeather(
      () => remoteDatasource.getWeather(city),
    );
  }

  Future<Either<Failure, Weather>> _getWeather(
      Future<WeatherModel> Function() getWeatherTest) async {
    try {
      final remoteTrivia = await getWeatherTest();
      return Right(remoteTrivia);
    } on Object {
      return Left(ServerFailure());
    }
  }
}
