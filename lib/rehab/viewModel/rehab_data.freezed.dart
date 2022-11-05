// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rehab_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RehabData {
  Map<String, List<String>> get sessionMap =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RehabDataCopyWith<RehabData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RehabDataCopyWith<$Res> {
  factory $RehabDataCopyWith(RehabData value, $Res Function(RehabData) then) =
      _$RehabDataCopyWithImpl<$Res, RehabData>;
  @useResult
  $Res call({Map<String, List<String>> sessionMap});
}

/// @nodoc
class _$RehabDataCopyWithImpl<$Res, $Val extends RehabData>
    implements $RehabDataCopyWith<$Res> {
  _$RehabDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionMap = null,
  }) {
    return _then(_value.copyWith(
      sessionMap: null == sessionMap
          ? _value.sessionMap
          : sessionMap // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RehabDataCopyWith<$Res> implements $RehabDataCopyWith<$Res> {
  factory _$$_RehabDataCopyWith(
          _$_RehabData value, $Res Function(_$_RehabData) then) =
      __$$_RehabDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<String>> sessionMap});
}

/// @nodoc
class __$$_RehabDataCopyWithImpl<$Res>
    extends _$RehabDataCopyWithImpl<$Res, _$_RehabData>
    implements _$$_RehabDataCopyWith<$Res> {
  __$$_RehabDataCopyWithImpl(
      _$_RehabData _value, $Res Function(_$_RehabData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionMap = null,
  }) {
    return _then(_$_RehabData(
      sessionMap: null == sessionMap
          ? _value._sessionMap
          : sessionMap // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc

class _$_RehabData implements _RehabData {
  const _$_RehabData({required final Map<String, List<String>> sessionMap})
      : _sessionMap = sessionMap;

  final Map<String, List<String>> _sessionMap;
  @override
  Map<String, List<String>> get sessionMap {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sessionMap);
  }

  @override
  String toString() {
    return 'RehabData(sessionMap: $sessionMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RehabData &&
            const DeepCollectionEquality()
                .equals(other._sessionMap, _sessionMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_sessionMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RehabDataCopyWith<_$_RehabData> get copyWith =>
      __$$_RehabDataCopyWithImpl<_$_RehabData>(this, _$identity);
}

abstract class _RehabData implements RehabData {
  const factory _RehabData(
      {required final Map<String, List<String>> sessionMap}) = _$_RehabData;

  @override
  Map<String, List<String>> get sessionMap;
  @override
  @JsonKey(ignore: true)
  _$$_RehabDataCopyWith<_$_RehabData> get copyWith =>
      throw _privateConstructorUsedError;
}
