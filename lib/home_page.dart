import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterbasics/learn_flutter_page.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => learn_flutter_page()),
          );
        },
        child: Text("Learn Flutter"),
      ),
    );
  }
}
