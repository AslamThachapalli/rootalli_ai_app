import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rootalli_ai_app/home/viewModel/home_view_model.dart';

import '../../../core/constants/dimensions.dart';
import 'status_widgets.dart';
import 'timeline_widget.dart';

class SessionWidget extends StatelessWidget {
  const SessionWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height10 * 0.1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TimeLineWidget(index: index),
          SizedBox(width: Dimensions.sbWidth10),
          Expanded(
            child: GetBuilder<HomeViewModel>(builder: (homeViewModel) {
              int sessionCompleted = homeViewModel.dateList?.length ?? 0;
              return Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: Dimensions.pixels10,
                      bottom: Dimensions.pixels10,
                      right: Dimensions.pixels10,
                      left: Dimensions.pixels10 * 2,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.65),
                        width: 1.5,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Session ${index + 1}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Dimensions.fontSize10 * 3,
                              ),
                            ),
                            if (index <= sessionCompleted && sessionCompleted != 0)
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: Dimensions.height10 * 0.5,
                                  horizontal: Dimensions.width10 * 2.5,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: index == sessionCompleted
                                      ? Colors.yellow.shade600
                                      : Theme.of(context).colorScheme.secondary,
                                ),
                                child: Text(
                                  index < sessionCompleted ? 'Completed' : 'Performed',
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                    fontSize: Dimensions.fontSize10 * 1.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            index < sessionCompleted
                                ? CompletedWidget(index: index)
                                : (index == sessionCompleted && sessionCompleted != 0)
                                    ? const PerformedWidget()
                                    : const StartWidget(),
                          ],
                        ),
                        Container(
                          height: 120,
                          width: 115,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                index.isEven
                                    ? 'assets/images/excercise4.jpg'
                                    : 'assets/images/excercise2.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  if (index < sessionCompleted)
                    Container(
                      height: 144,
                      width: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
