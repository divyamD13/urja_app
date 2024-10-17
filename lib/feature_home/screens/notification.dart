import 'package:flutter/material.dart';

class Notificationfl extends StatelessWidget {
  const Notificationfl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: const Center(
        child: Text(
          'No new notification!',
          style: TextStyle(
            fontSize: 30, // Adjust font size
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
