import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../error/exceptions.dart';

@Injectable(as: Converter<String, Either<Failure, String>>)
class CityConverter extends Converter<String, Either<Failure, String>> {
  @override
  Either<Failure, String> convert(String input) {
    try {
      return Right(input);
    } on FormatException {
      return Left(InvalidInputFailure());
    } on Object {
      return Left(InvalidInputFailure());
    }
  }
}

class InvalidInputFailure extends Failure {
  @override
  
  List<Object?> get props => [];
}
