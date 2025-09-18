import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/main/navigation/bottom_navigation.dart';

import 'navigation/destinations.dart' show getNavDestinations, getScreenByIndex;

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  final _pageController = PageController();
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    void onSelected(int index) {
      setState(() {
        currentIndex = index;
        _pageController.jumpToPage(index);
      });
    }

    return LayoutBuilder(
      builder: (context, dimens) {
        return Scaffold(
          body: PageView.builder(
            pageSnapping: true,
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            itemBuilder: getScreenByIndex,
          ),
          bottomNavigationBar: AppBottomNavigation(
              navDestinations: getNavDestinations(context),
              currentIndex: currentIndex,
              onSelected: onSelected),
        );
      },
    );
  }
}
