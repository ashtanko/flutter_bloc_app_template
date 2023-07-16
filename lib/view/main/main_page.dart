import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/routes/router.dart' as router;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
            destinations: destinations,
            selectedIndex: currentIndex,
            onDestinationSelected: onSelected,
          ),
        );
      },
    );
  }
}
