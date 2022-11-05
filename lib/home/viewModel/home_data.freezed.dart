// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeData {
  List<String> get dateList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeDataCopyWith<HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataCopyWith<$Res> {
  factory $HomeDataCopyWith(HomeData value, $Res Function(HomeData) then) =
      _$HomeDataCopyWithImpl<$Res, HomeData>;
  @useResult
  $Res call({List<String> dateList});
}

/// @nodoc
class _$HomeDataCopyWithImpl<$Res, $Val extends HomeData>
    implements $HomeDataCopyWith<$Res> {
  _$HomeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateList = null,
  }) {
    return _then(_value.copyWith(
      dateList: null == dateList
          ? _value.dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeDataCopyWith<$Res> implements $HomeDataCopyWith<$Res> {
  factory _$$_HomeDataCopyWith(
          _$_HomeData value, $Res Function(_$_HomeData) then) =
      __$$_HomeDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> dateList});
}

/// @nodoc
class __$$_HomeDataCopyWithImpl<$Res>
    extends _$HomeDataCopyWithImpl<$Res, _$_HomeData>
    implements _$$_HomeDataCopyWith<$Res> {
  __$$_HomeDataCopyWithImpl(
      _$_HomeData _value, $Res Function(_$_HomeData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateList = null,
  }) {
    return _then(_$_HomeData(
      dateList: null == dateList
          ? _value._dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_HomeData implements _HomeData {
  const _$_HomeData({required final List<String> dateList})
      : _dateList = dateList;

  final List<String> _dateList;
  @override
  List<String> get dateList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateList);
  }

  @override
  String toString() {
    return 'HomeData(dateList: $dateList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeData &&
            const DeepCollectionEquality().equals(other._dateList, _dateList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dateList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeDataCopyWith<_$_HomeData> get copyWith =>
      __$$_HomeDataCopyWithImpl<_$_HomeData>(this, _$identity);
}

abstract class _HomeData implements HomeData {
  const factory _HomeData({required final List<String> dateList}) = _$_HomeData;

  @override
  List<String> get dateList;
  @override
  @JsonKey(ignore: true)
  _$$_HomeDataCopyWith<_$_HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}
