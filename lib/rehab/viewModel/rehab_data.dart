import 'package:freezed_annotation/freezed_annotation.dart';

part 'rehab_data.freezed.dart';

@freezed
class RehabData with _$RehabData {
  const factory RehabData({
    required Map<String, List<String>> sessionMap,
  }) = _RehabData;
}
