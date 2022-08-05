import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class learn_flutter_page extends StatefulWidget {
  const learn_flutter_page({Key? key}) : super(key: key);

  @override
  State<learn_flutter_page> createState() => _learn_flutter_pageState();
}

class _learn_flutter_pageState extends State<learn_flutter_page> {
  bool isSwitch = false;
  bool isChecked = false;
  var colr = Colors.black;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("learn_flutter_page"),
          actions: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.ac_unit)),
            IconButton(onPressed: () => {}, icon: Icon(Icons.access_alarm))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("images/Special.png"),
              const SizedBox(height: 10),
              const Divider(color: Colors.black, height: 10),
              Container(
                margin: const EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                color: Colors.blueGrey,
                child: const Center(
                  child: Text(
                    "QWERTY",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: colr),
                  onPressed: () {
                    setState(() {
                      // change color in click
                      colr = Colors.red;
                    });
                    style:
                    debugPrint("Button Click");
                  },
                  child: Text("Elevated Button")),
              OutlinedButton(
                  onPressed: () {
                    debugPrint("Button Click");
                  },
                  child: Text("Outlined Button")),
              TextButton(
                  onPressed: () {
                    debugPrint("Button Click");
                  },
                  child: Text("Text Button")),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => {debugPrint("Gesture Detact on a row")},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.access_alarm),
                    Icon(Icons.access_time),
                    Icon(Icons.accessibility_sharp)
                  ],
                ),
              ),
              Switch(
                  value: isSwitch,
                  onChanged: (bool newValue) {
                    setState(() {
                      isSwitch = newValue;
                    });
                    isSwitch ? colr = Colors.green : colr = Colors.yellow;
                  }),
              Checkbox(
                  value: isChecked,
                  onChanged: (bool? newCheck) {
                    setState(() {
                      isChecked = newCheck!;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
