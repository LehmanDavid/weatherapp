import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'detail_item_column.dart';

Column detailWeatherInfo(
  BuildContext context, {
  required gust,
  required uv,
  required pressure,
  required precipation,
  required lastUpdate,
  required wind,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DetailItemColumn(
            type: 'gust'.tr(),
            value: '$gust km/h',
          ),
          DetailItemColumn(
            type: 'uv'.tr(),
            value: uv,
          ),
          DetailItemColumn(
            type: 'wind'.tr(),
            value: '$wind km/h',
          ),
        ],
      ),
      const SizedBox(
        height: 15.0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DetailItemColumn(type: 'pressure'.tr(), value: '$pressure hpa'),
          DetailItemColumn(type: 'precipation'.tr(), value: '$precipation mm'),
          DetailItemColumn(
            type: 'last_update'.tr(),
            value: lastUpdate,
          ),
        ],
      ),
    ],
  );
}
