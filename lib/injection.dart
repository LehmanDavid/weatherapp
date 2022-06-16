import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

GetIt getIt = GetIt.instance;

@injectableInit
void configureDependencies() {
  getIt.registerFactory(() => Dio());
  $initGetIt(getIt);
}
