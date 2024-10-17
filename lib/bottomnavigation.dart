import 'package:flutter/material.dart';
import 'package:urja_app/feature_application/screens/applications.dart';
import 'package:urja_app/feature_home/screens/dashboard.dart';
import 'package:urja_app/feature_profile/screens/profile.dart';
import 'package:urja_app/feature_tips/screens/tips_page.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnav> {
  int index = 0;
  final screens = [
    const DashBoardScreen(),
    const Applications(),
    const TipsPage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[index],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: const Color.fromARGB(255, 2, 159, 44),
          ),
          child: NavigationBar(
              height: 70,
              backgroundColor: const Color.fromARGB(255, 7, 7, 7),
              selectedIndex: index,
              onDestinationSelected: (index) => setState(
                    () => this.index = index,
                  ),
              destinations: const [
                NavigationDestination(
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.grey,
                    ),
                    label: 'Home'),
                NavigationDestination(
                    icon: Icon(
                      Icons.light_rounded,
                      color: Colors.grey,
                    ),
                    label: 'Application'),
                NavigationDestination(
                    icon: Icon(
                      Icons.spa_outlined,
                      color: Colors.grey,
                    ),
                    label: 'Tips'),
                NavigationDestination(
                    icon: Icon(
                      Icons.person_2_outlined,
                      color: Colors.grey,
                    ),
                    label: 'Profile'),
              ]),
        ));
  }
}
