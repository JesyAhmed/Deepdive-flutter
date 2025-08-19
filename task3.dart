
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List names = [
    {"name": "jessy", "age": 20},
    {"name": "jana", "age": 15},
    {"name": "arwa", "age": 20},
    {"name": "ahmed", "age": 25}
  ];

  
  Color boxColor = Colors.redAccent;
  double opacityValue = 1.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("task3"),
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  "Menu",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              ListTile(
                title: Text("option 1"),
              ),
              ListTile(
                title: Text("option 2"),
              ),
            ],
          ),
        ),

        body: Column(
         
          children: [
            SizedBox(height: 20),

            
            Container(
              height: 100,
              width: 200,
              color: boxColor.withOpacity(opacityValue),
              alignment: Alignment.center,
              
            ),

            SizedBox(height: 20),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      boxColor = Colors.red;
                    });
                  },
                  child: Text("أحمر"),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      boxColor = Colors.green;
                    });
                  },
                  child: Text("أخضر"),
                ),
              ],
            ),

            SizedBox(height: 20),

            
            Slider(
              value: opacityValue,
              min: 0.0,
              max: 1.0,
              divisions: 10,
              label: "Opacity: ${opacityValue.toStringAsFixed(1)}",
              onChanged: (value) {
                setState(() {
                  opacityValue = value;
                });
              },
            ),

            SizedBox(height: 20),

            
            Container(
              height: 200,
              padding: EdgeInsets.all(20),
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, i) {
                  return Text(
                    "${names[i]["name"]} - ${names[i]["age"]}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  );
                },
              ),
            ),

              Spacer(), 

  
    Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
               child:  Row(
              children: [
                Expanded(
                  child: Container(height: 200, color: Colors.redAccent),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Container(height: 200, color: Colors.green),
                ),
              ],
            ),
           
    )
           
       
              ],
            )
            
      ),
    );
  }
}
