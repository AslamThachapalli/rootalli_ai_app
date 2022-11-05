import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, newIndex, _) => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.black87,
              unselectedItemColor: Colors.grey,
              currentIndex: newIndex,
              onTap: (index) => indexChangeNotifier.value = index,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_repair_service_outlined),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.directions_walk),
                  label: 'Rehab',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.replay_sharp),
                  label: 'Practice',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: 'Profile',
                ),
              ],
            ));
  }
}
