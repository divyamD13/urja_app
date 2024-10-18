import 'package:flutter/material.dart';
import 'package:animated_toggle/animated_toggle.dart';

class MyAnimatedToggle extends StatefulWidget {
  const MyAnimatedToggle({super.key});

  @override
  State<MyAnimatedToggle> createState() => _MyAnimatedToggleState();
}

class _MyAnimatedToggleState extends State<MyAnimatedToggle> {
  
  @override
  Widget build(BuildContext context) {
    return
       AnimatedHorizontalToggle(
          taps: const ['First', 'Second', 'Last'],
          // write you taps names
          width: MediaQuery.of(context).size.width - 40,
          height: 48,
          duration: const Duration(milliseconds: 300),
          initialIndex: 0,
          background: Colors.black.withOpacity(0.1),
          activeColor: Colors.deepPurple,
          // here you can control the active text style
          activeTextStyle: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
          // here you can control the inactive text style
          inActiveTextStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.deepPurple),
          // the next 2 line if you need to put padding for the inactive buttons
          horizontalPadding: 4,
          verticalPadding: 4,
          // the next 2 line if you need to put padding for the active button
          activeHorizontalPadding: 2,
          activeVerticalPadding: 4,
          radius: 14,
          // you can control the radius for the Animated widget
          activeButtonRadius: 14,
          // you can control the radius for the active button
          onChange: (int currentIndex, int targetIndex) {
            // write Your Personal Code Here
          },
          showActiveButtonColor: true,
          // 'en' mean make the start from left other mean start from right
          local:
          'en', // her you can add the local to control the alignment like if you use en its the normal to start from left to right and if you use ar the will start from right to left
        );
  }
}