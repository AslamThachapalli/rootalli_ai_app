import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:get/get.dart';

import '../../../core/constants/dimensions.dart';
import '../../viewModel/home_view_model.dart';

class ProgressContainer extends StatelessWidget {
  const ProgressContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(Dimensions.pixels10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius10),
        border: Border.all(
          color: Colors.grey.withOpacity(0.65),
          width: 1.5,
        ),
      ),
      child: GetBuilder<HomeViewModel>(builder: (homeViewModel) {
        int sessionsLength = homeViewModel.dateList?.length ?? 0;
        int percentage;
        percentage = ((sessionsLength / 30) * 100).round();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today's Progress",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: Dimensions.fontSize10 * 2.5,
                  ),
                ),
                Text(
                  "$percentage%",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: Dimensions.fontSize10 * 2.5,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: Dimensions.sbHeight10),
            LinearPercentIndicator(
              padding: EdgeInsets.zero,
              width: Dimensions.screenWidth - Dimensions.width10 * 4.5,
              lineHeight: Dimensions.height10,
              percent: percentage.toDouble() / 100,
              backgroundColor: Colors.grey.withOpacity(0.5),
              progressColor: Theme.of(context).colorScheme.secondary,
              barRadius: Radius.circular(Dimensions.radius10 * 0.5),
              animation: true,
              animationDuration: 150,
            ),
            SizedBox(height: Dimensions.sbHeight10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProgressStatusWidget(
                  text: 'Completed',
                  sessionsNum: sessionsLength,
                  imagePath: 'assets/images/tick_mark.png',
                ),
                ProgressStatusWidget(
                  text: 'Pending',
                  sessionsNum: 30 - sessionsLength,
                  imagePath: 'assets/images/arrow_icon.png',
                ),
              ],
            )
          ],
        );
      }),
    );
  }
}

class ProgressStatusWidget extends StatelessWidget {
  const ProgressStatusWidget({
    Key? key,
    required this.text,
    required this.sessionsNum,
    required this.imagePath,
  }) : super(key: key);

  final String text;
  final String imagePath;
  final int sessionsNum;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: Dimensions.sbWidth10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: Dimensions.fontSize10 * 1.5,
              ),
            ),
            Text(
              '$sessionsNum Sessions',
              style: TextStyle(
                fontSize: Dimensions.fontSize10 * 1.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
