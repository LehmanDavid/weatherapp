part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.loading({required Weather weather}) =
      _WeatherLoading;
  const factory WeatherState.loaded({required Weather weather}) =
      _WeatherLoaded;
  const factory WeatherState.error(
      {required Weather weather, required String message}) = _WeatherError;
}
