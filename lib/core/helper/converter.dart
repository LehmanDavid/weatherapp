import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../error/exceptions.dart';

@injectable
class Converter {
  Either<Failure, String> convertCity(String city) {
    try {
      return Right(city);
    } on FormatException {
      return Left(InvalidInputFailure());
    }on Object {
      return Left(InvalidInputFailure());
    }
  }
}

class InvalidInputFailure extends Failure {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
