import 'package:flutter/material.dart';

import '../../../core/constants/dimensions.dart';

class DummyContainer extends StatelessWidget {
  const DummyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height10 * 20,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius10),
        color: Colors.blue,
      ),
    );
  }
}
