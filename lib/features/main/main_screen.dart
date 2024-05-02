import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/routes/router.dart' as router;

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    void onSelected(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    final destinations = router.destinations
        .map((e) => NavigationDestination(
              icon: e.icon,
              selectedIcon: e.selectedIcon,
              label: e.label,
            ))
        .toList();

    return LayoutBuilder(
      builder: (context, dimens) {
        return Scaffold(
          body: Stack(
            children: [
              router.destinations[currentIndex].screen,
            ],
          ),
          bottomNavigationBar: NavigationBar(
            //backgroundColor: Color(0xFFF2F4F7),
            //surfaceTintColor: Colors.white,
            //indicatorColor: Color(0xFFD0E9FF),
            destinations: destinations,
            selectedIndex: currentIndex,
            onDestinationSelected: onSelected,
          ),
        );
      },
    );
  }
}
