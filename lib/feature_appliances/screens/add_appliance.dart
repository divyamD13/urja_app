// import 'package:flutter/material.dart';

// class Applications extends StatefulWidget {
//   const Applications({super.key});

//   @override
//   State<Applications> createState() => _ApplicationsState();
// }

// class _ApplicationsState extends State<Applications> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade900,
//       body: const Center(
//         child: Text(
//           'Add Applications',
//           style: TextStyle(
//             fontSize: 30, // Adjust font size
//             fontWeight: FontWeight.w500,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:urja_app/feature_appliances/models/appliance.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApplianceListScreen(),
    );
  }
}

class ApplianceListScreen extends StatefulWidget {
  @override
  _ApplianceListScreenState createState() => _ApplianceListScreenState();
}

class _ApplianceListScreenState extends State<ApplianceListScreen> {
  List<Appliance> appliances = [
    Appliance(name: "Master AC", consumption: "25kWh", runtime: "5 Hr",room: 'Bedroom'),
    Appliance(name: "Night Lamp", consumption: "5kWh", runtime: "10 Hr",room: 'Living Room'),
    Appliance(name: "Main Light", consumption: "10kWh", runtime: "17 Hr",room: 'Hall'),
  ];

  final TextEditingController nameController = TextEditingController();
  final  consumptionController = TextEditingController();
  final TextEditingController roomController=TextEditingController();

  void _addAppliance() {
    String name = nameController.text;
    String consumption = consumptionController.text;
    String room = roomController.text;

    if (name.isNotEmpty && consumption.isNotEmpty) {
      setState(() {
        appliances.add(Appliance(name: name, consumption: consumption, runtime: "0 Hr",room:room));
      });
      nameController.clear();
      consumptionController.clear();
      roomController.clear();
      Navigator.pop(context);
    }
  }

  void _showAddApplianceDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Appliance'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Appliance Name'),
              ),
              TextField(
                controller: consumptionController,
                decoration: InputDecoration(labelText: 'Rating of Appliance (in Watts)'),
              ),
              TextField(
                controller:roomController,
                decoration: InputDecoration(labelText:'Room'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: _addAppliance,
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Appliances',
        style:TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white
        )
        ),
        backgroundColor:Colors.grey.shade900,
      ),
      body:Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Column(
          children: [
            SizedBox(height: 15,),
            Expanded(
              child: ListView.builder(
                itemCount: appliances.length,
                itemBuilder: (context, index) {
                  Appliance appliance = appliances[index];
                  return 
                     Padding(
                      padding: const EdgeInsets.only(
                                top: 20, left: 15, right: 15,bottom: 10),
                       child: Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(15.0),
                        child: ListTile(
                          minTileHeight: 100,
                          tileColor: const Color.fromARGB(255, 53, 49, 49),
                          shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: const BorderSide(
                                        color: Colors.grey,
                                      ), //
                                    ),
                          leading: const SizedBox(
                            width: 45,
                            height: 45,
                            child: Icon(Icons.electric_bolt_rounded,
                            color: Color.fromARGB(255, 8, 185, 14),
                            ),
                          ),
                          title: Text(appliance.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Total Consumption:  ${(appliance.consumption)}',
                              style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                              ),
                              Text('Run Time:  ${appliance.runtime}',
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),),
                              Text('Room:  ${appliance.room}',
                                style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          )
                              ),
                            ],
                          ),
                        ),
                      ),
                     );
                  
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: _showAddApplianceDialog,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 8, 185, 14), // background
                  foregroundColor: Colors.white, // foreground
                ),
                child: Text('Add Appliance'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

