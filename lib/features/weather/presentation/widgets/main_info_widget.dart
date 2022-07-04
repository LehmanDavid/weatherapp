import 'package:flutter/material.dart';
import '../../../../core/consts.dart';
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
        basicWeatherInfo(
          context,
          weather.cityName,
          DateTime.now().dayWithWeekday,
          weather.icon,
          weather.condition,
          '${weather.temp}',
          '${weather.wind}',
          '${weather.humidity}',
          weather.windDir,
        ),
        const SizedBox(
          height: 15.0,
        ),
        detailWeatherInfo(
          context,
          gust: '${weather.gust}',
          uv: '${weather.uv}',
          pressure: '${weather.pressure}',
          precipation: '${weather.precip}',
          lastUpdate: DateTime.now().convertedDateTime,
          wind: '${weather.wind}',
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0, top: 15.0),
          child: customFloatingActionButton(context),
        ),
      ],
    );
  }
}
