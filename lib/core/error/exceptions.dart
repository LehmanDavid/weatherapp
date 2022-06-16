import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({List properties = const []});
}

class ServerFailure extends Failure {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

