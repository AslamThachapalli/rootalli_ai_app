// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeDataDto _$HomeDataDtoFromJson(Map<String, dynamic> json) {
  return _HomeDataDto.fromJson(json);
}

/// @nodoc
mixin _$HomeDataDto {
  Map<String, Map<String, String>> get sessions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDataDtoCopyWith<HomeDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataDtoCopyWith<$Res> {
  factory $HomeDataDtoCopyWith(
          HomeDataDto value, $Res Function(HomeDataDto) then) =
      _$HomeDataDtoCopyWithImpl<$Res, HomeDataDto>;
  @useResult
  $Res call({Map<String, Map<String, String>> sessions});
}

/// @nodoc
class _$HomeDataDtoCopyWithImpl<$Res, $Val extends HomeDataDto>
    implements $HomeDataDtoCopyWith<$Res> {
  _$HomeDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessions = null,
  }) {
    return _then(_value.copyWith(
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeDataDtoCopyWith<$Res>
    implements $HomeDataDtoCopyWith<$Res> {
  factory _$$_HomeDataDtoCopyWith(
          _$_HomeDataDto value, $Res Function(_$_HomeDataDto) then) =
      __$$_HomeDataDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Map<String, String>> sessions});
}

/// @nodoc
class __$$_HomeDataDtoCopyWithImpl<$Res>
    extends _$HomeDataDtoCopyWithImpl<$Res, _$_HomeDataDto>
    implements _$$_HomeDataDtoCopyWith<$Res> {
  __$$_HomeDataDtoCopyWithImpl(
      _$_HomeDataDto _value, $Res Function(_$_HomeDataDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessions = null,
  }) {
    return _then(_$_HomeDataDto(
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeDataDto extends _HomeDataDto {
  const _$_HomeDataDto(
      {required final Map<String, Map<String, String>> sessions})
      : _sessions = sessions,
        super._();

  factory _$_HomeDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_HomeDataDtoFromJson(json);

  final Map<String, Map<String, String>> _sessions;
  @override
  Map<String, Map<String, String>> get sessions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sessions);
  }

  @override
  String toString() {
    return 'HomeDataDto(sessions: $sessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeDataDto &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sessions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeDataDtoCopyWith<_$_HomeDataDto> get copyWith =>
      __$$_HomeDataDtoCopyWithImpl<_$_HomeDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeDataDtoToJson(
      this,
    );
  }
}

abstract class _HomeDataDto extends HomeDataDto {
  const factory _HomeDataDto(
          {required final Map<String, Map<String, String>> sessions}) =
      _$_HomeDataDto;
  const _HomeDataDto._() : super._();

  factory _HomeDataDto.fromJson(Map<String, dynamic> json) =
      _$_HomeDataDto.fromJson;

  @override
  Map<String, Map<String, String>> get sessions;
  @override
  @JsonKey(ignore: true)
  _$$_HomeDataDtoCopyWith<_$_HomeDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
