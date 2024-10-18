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
      body: SingleChildScrollView(
        child: Column(
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
            SizedBox(
              height: 20,
            ),
            // Extra Tips Section
            const ListTile(
              title: Text(
                'Extra Tips',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Ensure that all insulation is in a state of good repair.\n'
                  'Finally, encourage staff to turn off office equipment when it is not being used.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Divider(),
            // Ventilation Section
            const ListTile(
              title: Text(
                'Ventilation',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.white),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Check that windows are not being opened to avoid overheating during winter months - '
                  'turn down the heating instead.\n'
                  'Ensure kitchen fans are switched off when no cooking is taking place.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Divider(),
            const ListTile(
              title: Text(
                'Microwave Ovens and Electric Kettles',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.white),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Microwaves save energy by reducing cooking time.\n'
                  'Remember, microwaves cook food from the outside edge towards the center of the dish, '
                  'so if your cooking more than one item, place larger and thicker items on the outside. Use an electric kettle to heat water. It is more energy efficient than using an electric cook top element.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Divider(),
            const ListTile(
              title: Text(
                'Refrigerators',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.white),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Refrigerator motors and compressors generate heat, so allow enough space for continuous airflow around refrigerator. If the heat can’t escape, the refrigerator’s cooling system will work harder and use more energy.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
