// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rehab_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RehabDataDto _$$_RehabDataDtoFromJson(Map<String, dynamic> json) =>
    _$_RehabDataDto(
      sessions: (json['sessions'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Map<String, String>.from(e as Map)),
      ),
    );

Map<String, dynamic> _$$_RehabDataDtoToJson(_$_RehabDataDto instance) =>
    <String, dynamic>{
      'sessions': instance.sessions,
    };
