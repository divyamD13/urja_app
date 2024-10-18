import 'package:flutter/material.dart';
import 'package:urja_app/feature_home/screens/notification.dart';
import 'package:urja_app/feature_home/widgets/toggle_button.dart';

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
            padding: const EdgeInsets.fromLTRB(16, 45, 5, 25),
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
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                        'Welcome', // Replace with actual name
                        style: TextStyle(
                          fontSize: 15, // Adjust font size
                          fontWeight: FontWeight.w500,
                          color: Colors.white, // Adjust font weight
                        ),
                      ),
                      Text(
                        'Ashutosh', // Replace with actual name
                        style: TextStyle(
                          fontSize: 30, // Adjust font size
                          fontWeight: FontWeight.w500,
                          color:const Color.fromARGB(255, 49, 230, 55), // Adjust font weight
                        ),
                      ),
                        ]
                      ),
                      const Spacer(),
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
          
          // 
           // Spacing between sections
          Column(
            children: [
              MyAnimatedToggle(),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                     color: Colors.green,
                     border: Border.all(color: Colors.grey), // Adjust border color and width
                      // Replace with actual image
                  ),
                   child:Padding(
                     padding: const EdgeInsets.all(16.0),
                     child: const Column(
                       children: [
                          Center(
                            child: Text(
                              'Prediction for your month',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        SizedBox(height: 10,),
                        Center(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Energy use for month',
                                  style: TextStyle(
                                      fontSize:15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                                Spacer(),
                                Text(
                                  'Bill for the month',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                Text(
                                  '370kWh',
                                  style: TextStyle(
                                    fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black
                                  )),
                                Spacer(),
                                Text(
                                  'Rs. 2,500',
                                  style: TextStyle(
                                    fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                  )
                                  ),
                          ],
                            ),
                          ],
                        ),
                      ),
                       ],
                     ),
                   ),
                 
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
