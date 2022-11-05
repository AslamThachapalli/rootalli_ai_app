import 'package:flutter/material.dart';

import '../../../core/constants/dimensions.dart';
import '../widgets/progress_container.dart';
import '../widgets/session_widget.dart';
import '../widgets/start_session_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: 30 * 160 + 380,
            width: double.maxFinite,
            child: Padding(
              padding: EdgeInsets.all(Dimensions.pixels10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning\nJane',
                    style: TextStyle(
                      height: 1,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.fontSize10 * 4,
                      color: Colors.black87.withOpacity(0.7),
                    ),
                  ),
                  SizedBox(height: Dimensions.sbHeight10),
                  const ProgressContainer(),
                  SizedBox(height: Dimensions.sbHeight10 * 2),
                  Expanded(
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 30,
                        itemBuilder: (context, index) {
                          return SessionWidget(index: index);
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
        const StartSessionButton(),
      ],
    );
  }
}
