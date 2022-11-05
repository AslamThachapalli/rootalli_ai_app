// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rehab_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RehabDataDto _$RehabDataDtoFromJson(Map<String, dynamic> json) {
  return _RehabDataDto.fromJson(json);
}

/// @nodoc
mixin _$RehabDataDto {
  Map<String, Map<String, String>> get sessions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RehabDataDtoCopyWith<RehabDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RehabDataDtoCopyWith<$Res> {
  factory $RehabDataDtoCopyWith(
          RehabDataDto value, $Res Function(RehabDataDto) then) =
      _$RehabDataDtoCopyWithImpl<$Res, RehabDataDto>;
  @useResult
  $Res call({Map<String, Map<String, String>> sessions});
}

/// @nodoc
class _$RehabDataDtoCopyWithImpl<$Res, $Val extends RehabDataDto>
    implements $RehabDataDtoCopyWith<$Res> {
  _$RehabDataDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_RehabDataDtoCopyWith<$Res>
    implements $RehabDataDtoCopyWith<$Res> {
  factory _$$_RehabDataDtoCopyWith(
          _$_RehabDataDto value, $Res Function(_$_RehabDataDto) then) =
      __$$_RehabDataDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Map<String, String>> sessions});
}

/// @nodoc
class __$$_RehabDataDtoCopyWithImpl<$Res>
    extends _$RehabDataDtoCopyWithImpl<$Res, _$_RehabDataDto>
    implements _$$_RehabDataDtoCopyWith<$Res> {
  __$$_RehabDataDtoCopyWithImpl(
      _$_RehabDataDto _value, $Res Function(_$_RehabDataDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessions = null,
  }) {
    return _then(_$_RehabDataDto(
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RehabDataDto extends _RehabDataDto {
  const _$_RehabDataDto(
      {required final Map<String, Map<String, String>> sessions})
      : _sessions = sessions,
        super._();

  factory _$_RehabDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_RehabDataDtoFromJson(json);

  final Map<String, Map<String, String>> _sessions;
  @override
  Map<String, Map<String, String>> get sessions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sessions);
  }

  @override
  String toString() {
    return 'RehabDataDto(sessions: $sessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RehabDataDto &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sessions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RehabDataDtoCopyWith<_$_RehabDataDto> get copyWith =>
      __$$_RehabDataDtoCopyWithImpl<_$_RehabDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RehabDataDtoToJson(
      this,
    );
  }
}

abstract class _RehabDataDto extends RehabDataDto {
  const factory _RehabDataDto(
          {required final Map<String, Map<String, String>> sessions}) =
      _$_RehabDataDto;
  const _RehabDataDto._() : super._();

  factory _RehabDataDto.fromJson(Map<String, dynamic> json) =
      _$_RehabDataDto.fromJson;

  @override
  Map<String, Map<String, String>> get sessions;
  @override
  @JsonKey(ignore: true)
  _$$_RehabDataDtoCopyWith<_$_RehabDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
