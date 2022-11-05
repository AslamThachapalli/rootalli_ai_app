import 'package:flutter/material.dart';

import '../dummy_pages/practice_page.dart';
import '../dummy_pages/profile_page.dart';
import '../home/view/pages/home_page.dart';
import '../rehab/view/pages/rehab_page.dart';
import 'widgets/bottom_nav_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  final List<Widget> _pages = const [
    HomePage(),
    RehabPage(),
    PracticePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, index, _) {
              return _pages[index];
            }),
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
