import 'dart:async';

import 'package:flutter/material.dart';
import 'package:urja_app/feature_home/screens/dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds:3 ), 
      ()
       {
        Navigator.pushReplacement(
          context, 
          MaterialPageRoute(builder: (context)=>DashBoardScreen()));
        });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height:150,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset('assets/images/urja_icon.png'),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('URJA',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 9, 220, 17)
            ),
            )
          ],
        ) ,)

    );
  }
}