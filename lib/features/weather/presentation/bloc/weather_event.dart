part of 'weather_bloc.dart';


@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.loadApi({required String city}) = LoadApi;
}
