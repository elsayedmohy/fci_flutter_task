import 'package:first_project/secondScreen.dart';
import "package:flutter/material.dart";

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.ac_unit),
        elevation: 0,
        title: Text('FCI App',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
        actions: [
          Icon(Icons.create),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.ac_unit_outlined),
          SizedBox(
            width: 10,
          ),
        ],
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [
        FractionallySizedBox(
          widthFactor: 1,
          child: Image.asset('assets/images/image1.jpg'),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                child: Text('OutLined')),
          ],
        ),
      ]),
    );
  }
}
