import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dartz/dartz.dart' as dartz;

import '../../../core/constants/dimensions.dart';
import '../../viewModel/rehab_view_model.dart';
import '../../../core/errors/failures.dart';
import '../../viewModel/rehab_data.dart';
import '../widgets/dummy_container.dart';
import '../widgets/rehab_widget.dart';
import '../widgets/status_container.dart';

class RehabPage extends StatelessWidget {
  const RehabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Get.find<RehabViewModel>().getRehabPageData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            dartz.Either<Failures, RehabData> rehabData =
                snapshot.data as dartz.Either<Failures, RehabData>;
            return rehabData.fold(
              (failure) => failure.map(
                serverFailure: (_) => const Center(
                  child: Text(
                    "Server Failure.\nCouldn't fetch data.\nTry after sometimes.",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              (rehabData) {
                int totalEntry = 0;
                rehabData.sessionMap.forEach((key, value) {
                  totalEntry += value.length;
                });

                List<RehabWidget> rehabWidgetList = <RehabWidget>[];
                int index = 0;
                for (String date in rehabData.sessionMap.keys) {
                  for (String time in rehabData.sessionMap[date]!) {
                    rehabWidgetList.add(RehabWidget(
                      date: date,
                      time: time,
                      index: index,
                    ));
                    index++;
                  }
                }
                rehabWidgetList = rehabWidgetList.reversed.toList();

                return SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: SizedBox(
                    height: totalEntry * 90 + 400,
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.pixels10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rehab Programme',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimensions.fontSize10 * 3,
                              color: Colors.black87.withOpacity(0.7),
                            ),
                          ),
                          SizedBox(height: Dimensions.sbHeight10),
                          const DummyContainer(),
                          SizedBox(height: Dimensions.sbHeight10 * 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'History',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: Dimensions.fontSize10 * 3,
                                  color: Colors.black87.withOpacity(0.7),
                                ),
                              ),
                              Icon(
                                Icons.filter_alt_sharp,
                                color: Colors.black87.withOpacity(0.7),
                                size: Dimensions.fontSize10 * 3.2,
                              )
                            ],
                          ),
                          SizedBox(height: Dimensions.sbHeight10),
                          StatusContainer(totalSessions: totalEntry),
                          SizedBox(height: Dimensions.sbHeight10),
                          Expanded(
                            child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: totalEntry,
                                itemBuilder: (context, index) {
                                  return rehabWidgetList[index];
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
        });
  }
}
