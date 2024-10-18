import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 13, 13),
      appBar: AppBar(
        title: const Center(
          child: Text('Energy Saving Tips',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        backgroundColor: const Color.fromARGB(255, 13, 13, 13),
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: ListTile(
              tileColor: const Color.fromARGB(255, 49, 230, 55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),

                side: const BorderSide(
                  color: Colors.grey,
                ), //
              ),
              title: const Center(
                child: Text(
                  'Tip of the Day',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              subtitle: const Center(
                child: Text(
                  '\"Remember to turn off lights when you leave a room\"',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
