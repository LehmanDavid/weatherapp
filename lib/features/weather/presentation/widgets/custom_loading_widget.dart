import 'package:flutter/material.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.black54,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
