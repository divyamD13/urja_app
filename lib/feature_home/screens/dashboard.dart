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
      backgroundColor: const Color.fromARGB(255, 13, 13, 13),
      body: SingleChildScrollView(
        child: Column(
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
                                height: 30,
                                child:
                                    Image.asset('assets/images/notification.png'))),
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
                  // MyAnimatedToggle(),
                  AnimatedHorizontalToggle(),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                         color: Color.fromARGB(255, 49, 230, 55),
                         border: Border.all(color: Colors.grey),
                      ),
                       child:const Padding(
                         padding:EdgeInsets.all(16.0),
                         child:Column(
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
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black),
                                    ),
                                    Spacer(),
                                    Text(
                                      'Bill for the month',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  children: [
                                    Text(
                                      '240kWh',
                                      style: TextStyle(
                                        fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 212, 23, 10)
                                      )),
                                    Spacer(),
                                    Text(
                                      '₹ 1,670',
                                      style: TextStyle(
                                        fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 2, 63, 112),
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
                  const SizedBox(height: 20,),
                  const Text('High Rolling Appliances',
                  
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                  const SizedBox(height: 20,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 185,
                              height: 150,
                              decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                               color: const Color.fromARGB(255, 110, 238, 115),
                               border: Border.all(color: Colors.grey),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 5,),
                                Text('Master AC',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                ),
                                SizedBox(height: 10,),
                                Center(
                                  child: Text('Consumption : 25kWh',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Average Runtime : 6Hrs',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                                ),
                              ],
                            ),
                            ),
                          ),
                         // const SizedBox(width: 5,),
                           Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 185,
                              height: 150,
                              decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                               color: const Color.fromARGB(255, 110, 238, 115),
                               border: Border.all(color: Colors.grey),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 5,),
                                Text('Electric Heater',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                ),
                                SizedBox(height: 10,),
                                Center(
                                  child: Text('Consumption : 16kWh',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Average Runtime : 8Hrs',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                                ),
                              ],
                            ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20,),
                       Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 185,
                          height: 150,
                          decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                           color:const Color.fromARGB(255, 110, 238, 115),
                           border: Border.all(color: Colors.grey),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 5,),
                            Text('Hall LED Bulb',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            ),
                            SizedBox(height: 10,),
                            Center(
                              child: Text('Consumption :1.2kWh',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Average Runtime : 9Hrs',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            ),
                          ],
                        ),
                        ),
                      ),
                     // const SizedBox(width: 5,),
                       Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 185,
                          height: 150,
                          decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                           color: const Color.fromARGB(255, 110, 238, 115),
                           border: Border.all(color: Colors.grey),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 5,),
                            Text('Bathroom Bulb',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            ),
                            SizedBox(height: 10,),
                            Center(
                              child: Text('Consumption :1.08kWh',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Average Runtime : 12Hrs',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            ),
                          ],
                        ),
                        ),
                      )
                    ],
                  )
                    ],
                  )
                ],
              ),
            
            
          ],
        ),
      ),
    );
  }
}
