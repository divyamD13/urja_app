import 'package:flutter/material.dart';
import 'package:animated_toggle/animated_toggle.dart';

// class MyAnimatedToggle extends StatefulWidget {
//   const MyAnimatedToggle({super.key});

//   @override
//   State<MyAnimatedToggle> createState() => _MyAnimatedToggleState();
// }

// class _MyAnimatedToggleState extends State<MyAnimatedToggle> {
  
//   @override
//   Widget build(BuildContext context) {
//     return
//        AnimatedHorizontalToggle(
//           taps: const ['Energy Used','Bill Expected',],
//           // write you taps names
//           width: MediaQuery.of(context).size.width - 40,
//           height: 48,
//           duration: const Duration(milliseconds: 30),
//           initialIndex: 0,
//           background: Colors.black.withOpacity(0.1),
//           activeColor:Color.fromARGB(255, 49, 230, 55),
//           // here you can control the active text style
//           activeTextStyle: const TextStyle(
//               fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
//           // here you can control the inactive text style
//           inActiveTextStyle: const TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w400,
//               color: Color.fromARGB(255, 49, 230, 55)),
//           // the next 2 line if you need to put padding for the inactive buttons
//           horizontalPadding: 4,
//           verticalPadding: 4,
//           // the next 2 line if you need to put padding for the active button
//           activeHorizontalPadding: 2,
//           activeVerticalPadding: 4,
//           radius: 14,
//           // you can control the radius for the Animated widget
//           activeButtonRadius: 14,
//           // you can control the radius for the active button
//           onChange: (int currentIndex, int targetIndex) {
//             if(targetIndex == 0){
//               return Container(height: 200,
//                   width: MediaQuery.of(context).size.width,
//                   child: Image.asset( 'assets/images/urja_icon.jpg'),
//                   );
//             }
//             else if(targetIndex ==1){
//               return Container(height: 200,
//                   width: MediaQuery.of(context).size.width,
//                   child: Image.asset( 'assets/images/person1.jpg'),
//                   );
//             }
//           },
//           showActiveButtonColor: true,
//           // 'en' mean make the start from left other mean start from right
//           local:
//           'en', // her you can add the local to control the alignment like if you use en its the normal to start from left to right and if you use ar the will start from right to left
//         );
//   }
// }
class AnimatedHorizontalToggle extends StatefulWidget {
  @override
  _AnimatedHorizontalToggleState createState() => _AnimatedHorizontalToggleState();
}

class _AnimatedHorizontalToggleState extends State<AnimatedHorizontalToggle> {
  bool isFirstImageSelected = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Toggle buttons
        ToggleButtons(
          borderRadius: BorderRadius.circular(20),
          isSelected: [isFirstImageSelected, !isFirstImageSelected],
          selectedColor:Colors.black,
          disabledColor: Colors.white,
          color:Colors.white ,
          fillColor: const Color.fromARGB(255, 49, 230, 55),
          onPressed: (int index) {
            setState(() {
              isFirstImageSelected = index == 0;
            });
          },
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              
                child: Text('⚡ Energy Used',
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                )
                ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('₹ Current Bill',
              style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                )
              ),
            ),
          ],
        ),

        SizedBox(height: 20),

        // AnimatedSwitcher to display the selected image
        AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(scale: animation, child: child);
          },
          child: isFirstImageSelected
              ? Image.asset(
                  'assets/images/Energy_used.jpg',
                  key: ValueKey(1),
                  width:MediaQuery.of(context).size.width,
                  height: 400,
                )
              : Image.asset(
                  'assets/images/current_bill.jpg',
                  key: ValueKey(2),
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                ),
        ),
      ],
    );
  }
}