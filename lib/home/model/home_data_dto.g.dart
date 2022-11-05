// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeDataDto _$$_HomeDataDtoFromJson(Map<String, dynamic> json) =>
    _$_HomeDataDto(
      sessions: (json['sessions'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Map<String, String>.from(e as Map)),
      ),
    );

Map<String, dynamic> _$$_HomeDataDtoToJson(_$_HomeDataDto instance) =>
    <String, dynamic>{
      'sessions': instance.sessions,
    };
