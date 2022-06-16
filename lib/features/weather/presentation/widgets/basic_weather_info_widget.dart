import 'package:flutter/material.dart';

import 'item_column.dart';

class BasicWeatherInfoWidget extends StatelessWidget {
  final String city;
  final String date;
  final String iconUrl;
  final String weatherCondition;
  final String temperature;
  final String wind;
  final String humidity;
  final String windDir;

  const BasicWeatherInfoWidget({
    Key? key,
    required this.city,
    required this.date,
    required this.iconUrl,
    required this.weatherCondition,
    required this.temperature,
    required this.wind,
    required this.humidity,
    required this.windDir,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.72,
      width: double.infinity,
      margin: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF955CD1),
            Color(0xFF3FA2FA),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [0.2, 0.85],
        ),
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Text(
              city,
              style: const TextStyle(color: Colors.white, fontSize: 25.0),
            ),
          ),
          const SizedBox(
            height: 0.5,
          ),
          Text(
            date,
            style: const TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          const SizedBox(
            height: 15.0,
          ),
          SizedBox(
            child: Image.network(
              iconUrl,
              fit: BoxFit.cover,
            ),
            height: 150,
            width: 150,
          ),
          Text(
            weatherCondition,
            style: const TextStyle(color: Colors.white, fontSize: 30.0),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            temperature,
            style: const TextStyle(color: Colors.white, fontSize: 45.0),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemColumn(
                    value: "$wind km/h",
                    iconUrl: 'assets/wind.png',
                    type: 'Wind'),
                ItemColumn(
                  value: humidity,
                  iconUrl: 'assets/clouds.png',
                  type: 'Humidity',
                ),
                ItemColumn(
                    value: windDir,
                    iconUrl: 'assets/wind-direction.png',
                    type: 'Wind Direction'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
