import 'package:flutter/material.dart';

import '../../../core/constants/dimensions.dart';

class StatusContainer extends StatelessWidget {
  const StatusContainer({
    Key? key,
    required this.totalSessions,
  }) : super(key: key);

  final int totalSessions;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius10),
        color: Colors.indigo.shade50,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StatusContainerWidget(
              text: 'Total Sessions',
              total: totalSessions,
              imagePath: 'assets/images/dumbell.png',
            ),
            VerticalDivider(
              thickness: 1,
              endIndent: 10,
              indent: 10,
              color: Colors.grey.withOpacity(0.5),
            ),
            StatusContainerWidget(
              text: 'Total Time',
              total: totalSessions,
              imagePath: 'assets/images/hour_glass.png',
            )
          ],
        ),
      ),
    );
  }
}

class StatusContainerWidget extends StatelessWidget {
  const StatusContainerWidget({
    Key? key,
    required this.text,
    required this.total,
    required this.imagePath,
  }) : super(key: key);

  final String text;
  final int total;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text),
        Row(
          children: [
            Image.asset(
              imagePath,
              height: Dimensions.height10 * 3,
              width: Dimensions.width10 * 3,
            ),
            Text(
              total.toString(),
              style: TextStyle(
                fontSize: Dimensions.fontSize10 * 3,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        )
      ],
    );
  }
}
