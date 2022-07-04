import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'change_language_dialog.dart';
import 'item_column.dart';

Container basicWeatherInfo(
  BuildContext context,
  city,
  date,
  iconUrl,
  weatherCondition,
  temperature,
  wind,
  humidity,
  windDir,
) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.70,
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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => const ChangeLanguageDialog(),
                    );
                  },
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Text(
              city,
              style: const TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            const SizedBox(
              height: 0.5,
            ),
            Text(
              date,
              style: const TextStyle(color: Colors.white, fontSize: 15.0),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 150,
              child: Image.network(
                'https:$iconUrl',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              '$weatherCondition'.tr(),
              style: const TextStyle(color: Colors.white, fontSize: 30.0),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              temperature,
              style: const TextStyle(color: Colors.white, fontSize: 35.0),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ItemColumn(
                      value: '$wind km/h',
                      iconUrl: 'assets/photos/wind.png',
                      type: 'wind'.tr()),
                  ItemColumn(
                    value: humidity,
                    iconUrl: 'assets/photos/clouds.png',
                    type: 'humidity'.tr(),
                  ),
                  ItemColumn(
                    value: windDir,
                    iconUrl: 'assets/photos/wind-direction.png',
                    type: 'wind_direction'.tr(),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}
