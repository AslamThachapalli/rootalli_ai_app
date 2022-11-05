import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/failures.dart';
import '../repository/home_repository.dart';

@injectable
class HomeViewModel extends GetxController {
  final HomeRepository _homeRepository;
  HomeViewModel(this._homeRepository);

  Either<Failures, List<String>> _dateList = right([]);
  List<String>? get dateList => _dateList.fold(
        (_) => null,
        id,
      );

  Future<void> getCompletedSessions() async {
    final either = await _homeRepository.fetchTodaySessions();
    _dateList = either.fold(
      (failure) => left(failure),
      (homeData) => right(homeData.dateList),
    );
    update();
  }

  Future<void> startSessionPressed({required List<String> dateList}) async {
    int sessionNum;
    if (dateList.isEmpty) {
      sessionNum = 1;
    } else {
      sessionNum = dateList.length + 1;
    }
    final failureOrNone = await _homeRepository.updateSessions(
      date: DateFormat('dd-MM-yyyy').format(DateTime.now()),
      time: DateFormat.jm().format(DateTime.now()),
      session: 'session$sessionNum',
    );
    failureOrNone.fold(
      () => null,
      (failure) => failure.map(
        serverFailure: (_) => GetSnackBar(
          message: "Server Failure. Couldn't Start Session",
        ),
      ),
    );
    update();
  }
}
