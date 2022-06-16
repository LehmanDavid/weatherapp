import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';
import '../bloc/weather_bloc.dart';
import '../widgets/custom_loading_widget.dart';
import '../widgets/main_info_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<WeatherBloc>()
        ..add(
          const WeatherEvent.loadApi(city: 'Tashkent'),
        ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 20, 26, 53),
        body: BlocConsumer<WeatherBloc, WeatherState>(
          listener: (context, state) => state.maybeWhen(
            orElse: () => null,
            error: (_, error) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error),
              ),
            ),
          ),
          builder: (context, state) {
            var weather = state.weather;
            return Stack(
              alignment: Alignment.center,
              children: [
                MainInfoWidget(weather: weather),
                if (state.maybeWhen(
                  loading: (_) => true,
                  orElse: () {
                    return false;
                  },
                ))
                  const CustomLoadingWidget(),
              ],
            );
          },
        ),
      ),
    );
  }
}
