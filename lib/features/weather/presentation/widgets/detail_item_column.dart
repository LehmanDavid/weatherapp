import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DetailItemColumn extends StatelessWidget {
  const DetailItemColumn({
    Key? key,
    required this.type,
    required this.value,
  }) : super(key: key);

  final String type;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          type,
          style: const TextStyle(
            color: Color.fromARGB(255, 99, 132, 155),
            fontSize: 15.0,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize:
                type == 'last_update'.tr() ? 15.0 : 20.0,
          ),
        ),
      ],
    );
  }
}
