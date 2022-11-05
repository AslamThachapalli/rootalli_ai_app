import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../viewModel/home_data.dart';

part 'home_data_dto.freezed.dart';
part 'home_data_dto.g.dart';

@freezed
class HomeDataDto with _$HomeDataDto {
  const HomeDataDto._();

  const factory HomeDataDto({
    required Map<String, Map<String, String>> sessions,
  }) = _HomeDataDto;

  HomeData toViewModel() {
    if (sessions.containsKey(DateFormat('dd-MM-yyyy').format(DateTime.now()))) {
      return HomeData(
        dateList: sessions[DateFormat('dd-MM-yyyy').format(DateTime.now())]!.keys.toList(),
      );
    } else {
      return HomeData.empty();
    }
  }

  factory HomeDataDto.fromJson(Map<String, dynamic> json) => _$HomeDataDtoFromJson(json);
}
