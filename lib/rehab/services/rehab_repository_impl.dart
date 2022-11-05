import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../core/constants/urls.dart';
import '../../core/errors/failures.dart';
import '../repository/rehab_repository.dart';
import '../viewModel/rehab_data.dart';
import '../model/rehab_data_dto.dart';

@LazySingleton(as: RehabRepository)
class RehabRepositoryImpl implements RehabRepository {
  final http.Client _client;
  RehabRepositoryImpl(this._client);

  @override
  Future<Either<Failures, RehabData>> fetchAllSessions() async {
    try {
      final response = await _client.get(Uri.parse('$rtdbBaseUrl.json'));
      return right(RehabDataDto.fromJson(json.decode(response.body)).toViewModel());
    } catch (_) {
      return left(const Failures.serverFailure());
    }
  }
}
