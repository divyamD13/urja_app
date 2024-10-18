import 'package:flutter/material.dart';
import 'package:urja_app/feature_home/screens/notification.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 35, 5, 25),
            child: Row(
              children: [
                // Profile picture
                const CircleAvatar(
                  radius: 30, // Adjust the size of the profile picture
                  backgroundImage: AssetImage('assets/images/person1.jpg'),
                ),
                const SizedBox(width: 10), // Spacing between image and name
                // Name and status icon
                Expanded(
                  child: Row(
                    children: [
                      const Text(
                        'Hi Ashutosh!', // Replace with actual name
                        style: TextStyle(
                          fontSize: 30, // Adjust font size
                          fontWeight: FontWeight.w500,
                          color: Colors.white, // Adjust font weight
                        ),
                      ),
                      Spacer(),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Notificationfl()));
                          },
                          child: Container(
                              height: 70,
                              child:
                                  Image.asset('assets/images/urja_icon.png'))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
