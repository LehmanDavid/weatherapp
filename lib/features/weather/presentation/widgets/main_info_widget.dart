import 'package:flutter/material.dart';
import 'package:weatherapp/core/consts.dart';

import '../../domain/entities/weather_entity.dart';
import 'custom_floating_action_button.dart';
import 'detail_weather_info_widget.dart';
import 'basic_weather_info_widget.dart';

class MainInfoWidget extends StatelessWidget {
  const MainInfoWidget({
    Key? key,
    required this.weather,
  }) : super(key: key);

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        BasicWeatherInfoWidget(
          city: weather.cityName,
          date: DateTime.now().dayWithWeekday,
          iconUrl: 'https:${weather.icon}',
          weatherCondition: weather.condition,
          temperature: '${weather.temp}',
          wind: '${weather.wind}',
          humidity: '${weather.humidity}',
          windDir: weather.windDir,
        ),
        const SizedBox(
          height: 15.0,
        ),
        DetailWeatherInfoWidget(
          gust: weather.gust.toString(),
          uv: weather.uv.toString(),
          pressure: weather.pressure.toString(),
          precipation: weather.precip.toString(),
          lastUpdate: DateTime.now().convertedDateTime,
          wind: weather.wind.toString(),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0, top: 5.0),
          child: customFloatingActionButton(context),
        ),
      ],
    );
  }
}
