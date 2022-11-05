import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/dimensions.dart';
import '../../viewModel/home_view_model.dart';

class StartSessionButton extends StatelessWidget {
  const StartSessionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      left: 10,
      bottom: 20,
      child: GestureDetector(
        onTap: () async {
          HomeViewModel controller = Get.find();
          final dateList = controller.dateList;
          await Future.wait([
            controller.startSessionPressed(dateList: dateList ?? []),
            controller.getCompletedSessions(),
          ]);
        },
        child: Container(
          height: Dimensions.height10 * 6,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(Dimensions.radius10 * 3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
                size: Dimensions.iconSize10 * 5,
              ),
              Text(
                'Start Session',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Dimensions.fontSize10 * 2,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
