import 'package:flutter/material.dart';

import 'detail_item_column.dart';

class DetailWeatherInfoWidget extends StatelessWidget {
  final String gust;
  final String uv;
  final String pressure;
  final String precipation;
  final String lastUpdate;
  final String wind;
  const DetailWeatherInfoWidget({
    Key? key,
    required this.gust,
    required this.uv,
    required this.pressure,
    required this.precipation,
    required this.lastUpdate,
    required this.wind,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DetailItemColumn(type: 'Gust', value: '$gust kp/h'),
            DetailItemColumn(type: 'UV', value: uv),
            DetailItemColumn(type: 'Wind', value: '$wind km/h')
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DetailItemColumn(type: 'Pressure', value: '$pressure hpa'),
            DetailItemColumn(type: 'Precipitatoin', value: '$precipation mm'),
            DetailItemColumn(type: 'Last Update', value: lastUpdate),
          ],
        ),
      ],
    );
  }
}
