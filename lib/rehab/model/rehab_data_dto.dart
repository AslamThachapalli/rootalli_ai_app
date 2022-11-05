import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../viewModel/rehab_data.dart';

part 'rehab_data_dto.freezed.dart';
part 'rehab_data_dto.g.dart';

@freezed
class RehabDataDto with _$RehabDataDto {
  const RehabDataDto._();

  const factory RehabDataDto({
    required Map<String, Map<String, String>> sessions,
  }) = _RehabDataDto;

  RehabData toViewModel() {
    return RehabData(sessionMap: sessions.map((key, value) {
      return MapEntry(key, value.keys.toList());
    }));
  }

  factory RehabDataDto.fromJson(Map<String, dynamic> json) => _$RehabDataDtoFromJson(json);
}
