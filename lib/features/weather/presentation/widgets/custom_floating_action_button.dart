import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/weather_bloc.dart';

FloatingActionButton customFloatingActionButton(BuildContext context) {
  TextEditingController textController = TextEditingController();
  String city = '';
  return FloatingActionButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            backgroundColor: const Color.fromARGB(255, 52, 101, 156),
            title: Text(
              'your_city'.tr(),
              style: const TextStyle(color: Colors.white),
            ),
            content: TextField(
              onChanged: (value) => city = value,
              decoration: InputDecoration(
                hintText: "input_city".tr(),
                hintStyle: const TextStyle(color: Colors.white),
              ),
              controller: textController,
              style: const TextStyle(color: Colors.white),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  context
                      .read<WeatherBloc>()
                      .add(WeatherEvent.loadApi(city: city));
                  Navigator.pop(context);
                },
                child: Text(
                  'submit'.tr(),
                  style: const TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              )
            ],
          );
        },
      );
    },
    child: const Icon(Icons.pin_drop_rounded),
    backgroundColor: const Color.fromARGB(255, 18, 113, 196),
  );
}
