import 'package:flutter/material.dart';

import '../../../core/constants/dimensions.dart';

class RehabWidget extends StatelessWidget {
  const RehabWidget({
    Key? key,
    required this.date,
    required this.time,
    required this.index,
  }) : super(key: key);

  final String date;
  final String time;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius10),
      ),
      child: Row(
        children: [
          Container(
            height: Dimensions.height10 * 7,
            width: Dimensions.width10 * 7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  index.isEven ? 'assets/images/excercise4.jpg' : 'assets/images/excercise2.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: Dimensions.sbWidth10 * 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RehabRowWidget(
                text: time,
                icon: Icons.access_time,
              ),
              SizedBox(height: Dimensions.sbHeight10),
              RehabRowWidget(
                text: date,
                icon: Icons.calendar_today_outlined,
              ),
            ],
          ),
          const Spacer(),
          Text(
            'View Results',
            style: TextStyle(
              fontSize: Dimensions.fontSize10 * 1.6,
              color: Colors.black87.withOpacity(0.7),
            ),
          )
        ],
      ),
    );
  }
}

class RehabRowWidget extends StatelessWidget {
  const RehabRowWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: Dimensions.fontSize10 * 1.9,
        ),
        SizedBox(width: Dimensions.sbWidth10 * 0.5),
        Text(
          text,
          style: TextStyle(
            color: Colors.grey,
            fontSize: Dimensions.fontSize10 * 1.6,
          ),
        ),
      ],
    );
  }
}
