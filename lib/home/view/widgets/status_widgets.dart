import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rootalli_ai_app/home/viewModel/home_view_model.dart';

import '../../../core/constants/dimensions.dart';

class CompletedWidget extends StatelessWidget {
  const CompletedWidget({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: Dimensions.sbHeight10),
        const Text(
          'Performed At',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        GetBuilder<HomeViewModel>(builder: (homeViewModel) {
          return Text(
            homeViewModel.dateList![index],
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          );
        }),
      ],
    );
  }
}

class PerformedWidget extends StatelessWidget {
  const PerformedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Dimensions.sbHeight10 * 0.5),
        const Text(
          'Enter Pain Score',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: Dimensions.sbHeight10 * 0.5),
        Row(
          children: [
            CircleAvatar(
              radius: Dimensions.radius10 * 1.3,
              backgroundColor: Theme.of(context).colorScheme.secondary,
              child: Icon(
                Icons.replay,
                color: Colors.white,
                size: Dimensions.iconSize10 * 2,
              ),
            ),
            SizedBox(width: Dimensions.width10 * 1.5),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.height10 * 0.5,
                horizontal: Dimensions.width10 * 1.5,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(Dimensions.radius10 * 1.5),
              ),
              child: Text(
                'Retry',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87.withOpacity(0.7),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class StartWidget extends StatelessWidget {
  const StartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Dimensions.sbHeight10 * 0.5),
        Row(
          children: [
            CircleAvatar(
              radius: 13,
              backgroundColor: Theme.of(context).colorScheme.secondary,
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: Dimensions.iconSize10 * 2,
              ),
            ),
            SizedBox(width: Dimensions.iconSize10 * 1.5),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.height10 * 0.5,
                horizontal: Dimensions.width10 * 1.5,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(Dimensions.radius10 * 1.5),
              ),
              child: Text(
                'Start',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87.withOpacity(0.7),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
