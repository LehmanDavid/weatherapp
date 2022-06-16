
import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}


class NoParams{}