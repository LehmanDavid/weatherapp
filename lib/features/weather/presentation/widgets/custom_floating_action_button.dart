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
            title: const Text(
              'Yout city: ',
              style: TextStyle(color: Colors.white),
            ),
            content: TextField(
              onChanged: (value) => city = value,
              decoration: const InputDecoration(
                hintText: "Input the city here: ",
                hintStyle: TextStyle(color: Colors.white),
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
                child: const Text(
                  'SUBMIT',
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
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
