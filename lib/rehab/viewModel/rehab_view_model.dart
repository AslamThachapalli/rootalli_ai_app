import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/failures.dart';
import '../repository/rehab_repository.dart';
import 'rehab_data.dart';

@injectable
class RehabViewModel extends GetxController {
  final RehabRepository _rehabRepository;
  RehabViewModel(this._rehabRepository);

  Future<Either<Failures, RehabData>> getRehabPageData() async {
    final either = await _rehabRepository.fetchAllSessions();
    return either.fold(
      (failure) => left(failure),
      (rehabData) => right(rehabData),
    );
  }
}
