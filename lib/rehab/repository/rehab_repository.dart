import 'package:dartz/dartz.dart';
import 'package:rootalli_ai_app/core/errors/failures.dart';

import '../viewModel/rehab_data.dart';

abstract class RehabRepository {
  Future<Either<Failures, RehabData>> fetchAllSessions();
}
