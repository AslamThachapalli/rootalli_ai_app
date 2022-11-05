import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:get/get.dart';
import 'package:rootalli_ai_app/home/viewModel/home_view_model.dart';

import '../../../core/constants/dimensions.dart';

class TimeLineWidget extends StatelessWidget {
  const TimeLineWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(builder: (homeViewModel) {
      int sessionCompleted = homeViewModel.dateList?.length ?? 0;
      return Column(
        children: [
          Dash(
            direction: Axis.vertical,
            dashThickness: 1.5,
            dashLength: 10,
            length: Dimensions.height10 * 7,
            dashColor: index == 0
                ? Colors.transparent
                : index >= sessionCompleted
                    ? Colors.grey
                    : Theme.of(context).colorScheme.secondary,
          ),
          if (index < sessionCompleted)
            CircleAvatar(
              radius: Dimensions.radius10,
              backgroundColor: Theme.of(context).colorScheme.secondary,
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: Dimensions.iconSize10 * 1.5,
              ),
            ),
          if (index > sessionCompleted || index == sessionCompleted)
            Container(
              height: Dimensions.height10 * 2,
              width: Dimensions.width10 * 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
                border: Border.all(
                  width: 2,
                  color: Colors.grey,
                ),
              ),
            ),
          if (index != 29)
            Dash(
              direction: Axis.vertical,
              dashThickness: 1.5,
              dashLength: 10,
              length: Dimensions.height10 * 7,
              dashColor: index == 29
                  ? Colors.transparent
                  : index >= sessionCompleted - 1
                      ? Colors.grey
                      : Theme.of(context).colorScheme.secondary,
            ),
        ],
      );
    });
  }
}
