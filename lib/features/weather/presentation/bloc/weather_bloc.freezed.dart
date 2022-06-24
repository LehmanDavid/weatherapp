// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  String get city => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String city) loadApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String city)? loadApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String city)? loadApi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadApi value) loadApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadApi value)? loadApi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadApi value)? loadApi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherEventCopyWith<WeatherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
  $Res call({String city});
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$LoadApiCopyWith<$Res> implements $WeatherEventCopyWith<$Res> {
  factory _$$LoadApiCopyWith(_$LoadApi value, $Res Function(_$LoadApi) then) =
      __$$LoadApiCopyWithImpl<$Res>;
  @override
  $Res call({String city});
}

/// @nodoc
class __$$LoadApiCopyWithImpl<$Res> extends _$WeatherEventCopyWithImpl<$Res>
    implements _$$LoadApiCopyWith<$Res> {
  __$$LoadApiCopyWithImpl(_$LoadApi _value, $Res Function(_$LoadApi) _then)
      : super(_value, (v) => _then(v as _$LoadApi));

  @override
  _$LoadApi get _value => super._value as _$LoadApi;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_$LoadApi(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadApi implements LoadApi {
  const _$LoadApi({required this.city});

  @override
  final String city;

  @override
  String toString() {
    return 'WeatherEvent.loadApi(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadApi &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  _$$LoadApiCopyWith<_$LoadApi> get copyWith =>
      __$$LoadApiCopyWithImpl<_$LoadApi>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String city) loadApi,
  }) {
    return loadApi(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String city)? loadApi,
  }) {
    return loadApi?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String city)? loadApi,
    required TResult orElse(),
  }) {
    if (loadApi != null) {
      return loadApi(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadApi value) loadApi,
  }) {
    return loadApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadApi value)? loadApi,
  }) {
    return loadApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadApi value)? loadApi,
    required TResult orElse(),
  }) {
    if (loadApi != null) {
      return loadApi(this);
    }
    return orElse();
  }
}

abstract class LoadApi implements WeatherEvent {
  const factory LoadApi({required final String city}) = _$LoadApi;

  @override
  String get city => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$LoadApiCopyWith<_$LoadApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  Weather get weather => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) loading,
    required TResult Function(Weather weather) loaded,
    required TResult Function(Weather weather, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Weather weather)? loading,
    TResult Function(Weather weather)? loaded,
    TResult Function(Weather weather, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? loading,
    TResult Function(Weather weather)? loaded,
    TResult Function(Weather weather, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherLoading value) loading,
    required TResult Function(_WeatherLoaded value) loaded,
    required TResult Function(_WeatherError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WeatherLoading value)? loading,
    TResult Function(_WeatherLoaded value)? loaded,
    TResult Function(_WeatherError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherLoading value)? loading,
    TResult Function(_WeatherLoaded value)? loaded,
    TResult Function(_WeatherError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call({Weather weather});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherLoadingCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_WeatherLoadingCopyWith(
          _$_WeatherLoading value, $Res Function(_$_WeatherLoading) then) =
      __$$_WeatherLoadingCopyWithImpl<$Res>;
  @override
  $Res call({Weather weather});
}

/// @nodoc
class __$$_WeatherLoadingCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$$_WeatherLoadingCopyWith<$Res> {
  __$$_WeatherLoadingCopyWithImpl(
      _$_WeatherLoading _value, $Res Function(_$_WeatherLoading) _then)
      : super(_value, (v) => _then(v as _$_WeatherLoading));

  @override
  _$_WeatherLoading get _value => super._value as _$_WeatherLoading;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(_$_WeatherLoading(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc

class _$_WeatherLoading implements _WeatherLoading {
  const _$_WeatherLoading({required this.weather});

  @override
  final Weather weather;

  @override
  String toString() {
    return 'WeatherState.loading(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherLoading &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherLoadingCopyWith<_$_WeatherLoading> get copyWith =>
      __$$_WeatherLoadingCopyWithImpl<_$_WeatherLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) loading,
    required TResult Function(Weather weather) loaded,
    required TResult Function(Weather weather, String message) error,
  }) {
    return loading(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Weather weather)? loading,
    TResult Function(Weather weather)? loaded,
    TResult Function(Weather weather, String message)? error,
  }) {
    return loading?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? loading,
    TResult Function(Weather weather)? loaded,
    TResult Function(Weather weather, String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherLoading value) loading,
    required TResult Function(_WeatherLoaded value) loaded,
    required TResult Function(_WeatherError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WeatherLoading value)? loading,
    TResult Function(_WeatherLoaded value)? loaded,
    TResult Function(_WeatherError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherLoading value)? loading,
    TResult Function(_WeatherLoaded value)? loaded,
    TResult Function(_WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _WeatherLoading implements WeatherState {
  const factory _WeatherLoading({required final Weather weather}) =
      _$_WeatherLoading;

  @override
  Weather get weather => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherLoadingCopyWith<_$_WeatherLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeatherLoadedCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_WeatherLoadedCopyWith(
          _$_WeatherLoaded value, $Res Function(_$_WeatherLoaded) then) =
      __$$_WeatherLoadedCopyWithImpl<$Res>;
  @override
  $Res call({Weather weather});
}

/// @nodoc
class __$$_WeatherLoadedCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$$_WeatherLoadedCopyWith<$Res> {
  __$$_WeatherLoadedCopyWithImpl(
      _$_WeatherLoaded _value, $Res Function(_$_WeatherLoaded) _then)
      : super(_value, (v) => _then(v as _$_WeatherLoaded));

  @override
  _$_WeatherLoaded get _value => super._value as _$_WeatherLoaded;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(_$_WeatherLoaded(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc

class _$_WeatherLoaded implements _WeatherLoaded {
  const _$_WeatherLoaded({required this.weather});

  @override
  final Weather weather;

  @override
  String toString() {
    return 'WeatherState.loaded(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherLoaded &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherLoadedCopyWith<_$_WeatherLoaded> get copyWith =>
      __$$_WeatherLoadedCopyWithImpl<_$_WeatherLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) loading,
    required TResult Function(Weather weather) loaded,
    required TResult Function(Weather weather, String message) error,
  }) {
    return loaded(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Weather weather)? loading,
    TResult Function(Weather weather)? loaded,
    TResult Function(Weather weather, String message)? error,
  }) {
    return loaded?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? loading,
    TResult Function(Weather weather)? loaded,
    TResult Function(Weather weather, String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherLoading value) loading,
    required TResult Function(_WeatherLoaded value) loaded,
    required TResult Function(_WeatherError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WeatherLoading value)? loading,
    TResult Function(_WeatherLoaded value)? loaded,
    TResult Function(_WeatherError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherLoading value)? loading,
    TResult Function(_WeatherLoaded value)? loaded,
    TResult Function(_WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _WeatherLoaded implements WeatherState {
  const factory _WeatherLoaded({required final Weather weather}) =
      _$_WeatherLoaded;

  @override
  Weather get weather => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherLoadedCopyWith<_$_WeatherLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeatherErrorCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_WeatherErrorCopyWith(
          _$_WeatherError value, $Res Function(_$_WeatherError) then) =
      __$$_WeatherErrorCopyWithImpl<$Res>;
  @override
  $Res call({Weather weather, String message});
}

/// @nodoc
class __$$_WeatherErrorCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$$_WeatherErrorCopyWith<$Res> {
  __$$_WeatherErrorCopyWithImpl(
      _$_WeatherError _value, $Res Function(_$_WeatherError) _then)
      : super(_value, (v) => _then(v as _$_WeatherError));

  @override
  _$_WeatherError get _value => super._value as _$_WeatherError;

  @override
  $Res call({
    Object? weather = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_WeatherError(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherError implements _WeatherError {
  const _$_WeatherError({required this.weather, required this.message});

  @override
  final Weather weather;
  @override
  final String message;

  @override
  String toString() {
    return 'WeatherState.error(weather: $weather, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherError &&
            const DeepCollectionEquality().equals(other.weather, weather) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(weather),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherErrorCopyWith<_$_WeatherError> get copyWith =>
      __$$_WeatherErrorCopyWithImpl<_$_WeatherError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) loading,
    required TResult Function(Weather weather) loaded,
    required TResult Function(Weather weather, String message) error,
  }) {
    return error(weather, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Weather weather)? loading,
    TResult Function(Weather weather)? loaded,
    TResult Function(Weather weather, String message)? error,
  }) {
    return error?.call(weather, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? loading,
    TResult Function(Weather weather)? loaded,
    TResult Function(Weather weather, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(weather, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherLoading value) loading,
    required TResult Function(_WeatherLoaded value) loaded,
    required TResult Function(_WeatherError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WeatherLoading value)? loading,
    TResult Function(_WeatherLoaded value)? loaded,
    TResult Function(_WeatherError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherLoading value)? loading,
    TResult Function(_WeatherLoaded value)? loaded,
    TResult Function(_WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WeatherError implements WeatherState {
  const factory _WeatherError(
      {required final Weather weather,
      required final String message}) = _$_WeatherError;

  @override
  Weather get weather => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherErrorCopyWith<_$_WeatherError> get copyWith =>
      throw _privateConstructorUsedError;
}
