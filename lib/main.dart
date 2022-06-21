import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/app.dart';
import 'config/bloc/bloc_observer.dart';
import 'injection.dart';

Future<void> main() async => runZonedGuarded(
      () async {
          WidgetsFlutterBinding.ensureInitialized();
            await Firebase.initializeApp();
         configureDependencies();
        BlocOverrides.runZoned(() => runApp(const MyApp()),
            blocObserver: AppBlocObserver());
      },
      (error, StackTrace stackTrace) {
        log('Error: $error');
        log('StackTrace: $stackTrace');
      },
    );
