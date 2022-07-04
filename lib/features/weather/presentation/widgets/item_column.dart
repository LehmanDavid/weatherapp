import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ItemColumn extends StatelessWidget {
  const ItemColumn({
    Key? key,
    required this.value,
    required this.iconUrl,
    required this.type,
  }) : super(key: key);

  final String value;
  final String iconUrl;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 35,
          child:
              Image.asset(iconUrl, color: type == 'wind'.tr() ? Colors.white : null),
        ),
        const SizedBox(
          height: 3.0,
        ),
        Text(
          value,
          style: const TextStyle(color: Colors.white, fontSize: 15.0),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          type,
          style: const TextStyle(color: Colors.white, fontSize: 13.0),
        )
      ],
    );
  }
}
