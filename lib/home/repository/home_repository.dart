import 'package:dartz/dartz.dart';
import 'package:rootalli_ai_app/core/errors/failures.dart';
import 'package:rootalli_ai_app/home/viewModel/home_data.dart';

abstract class HomeRepository {
  Future<Either<Failures, HomeData>> fetchTodaySessions();
  Future<Option<Failures>> updateSessions({
    required String date,
    required String time,
    required String session,
  });
}
