import 'package:flutter/material.dart';

import '../features/weather/presentation/pages/home_page.dart';
import 'package:easy_localization/easy_localization.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      home: const HomePage(),
    );
  }
}
