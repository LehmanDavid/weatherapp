import 'dart:async';
import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'config/app.dart';
import 'config/bloc/bloc_observer.dart';
import 'injection.dart';

Future<void> main() async => runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await MobileAds.instance.initialize();
        await Firebase.initializeApp();
        await EasyLocalization.ensureInitialized();
        configureDependencies();
        BlocOverrides.runZoned(
          () => runApp(
            EasyLocalization(
              child: const MyApp(),
              supportedLocales: const [
                Locale('en'),
                Locale('ru'),
              ],
              path: 'assets/translations',
              startLocale: const Locale('en'),
              fallbackLocale: const Locale('en'),
            ),
          ),
          blocObserver: AppBlocObserver(),
        );
      },
      (error, StackTrace stackTrace) {
        log('Error: $error');
        log('StackTrace: $stackTrace');
      },
    );
