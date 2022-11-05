import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../core/constants/urls.dart';
import '../../core/errors/failures.dart';
import '../repository/home_repository.dart';
import '../viewModel/home_data.dart';
import '../model/home_data_dto.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final http.Client _client;
  HomeRepositoryImpl(this._client);

  @override
  Future<Either<Failures, HomeData>> fetchTodaySessions() async {
    try {
      final response = await _client.get(Uri.parse('$rtdbBaseUrl.json'));
      return right(HomeDataDto.fromJson(json.decode(response.body)).toViewModel());
    } catch (_) {
      return left(const Failures.serverFailure());
    }
  }

  @override
  Future<Option<Failures>> updateSessions({
    required String date,
    required String time,
    required String session,
  }) async {
    try {
      await _client.patch(Uri.parse('${rtdbBaseUrl}sessions/$date.json'),
          body: json.encode({
            time: session,
          }));
      return none();
    } catch (_) {
      return some(const Failures.serverFailure());
    }
  }
}
