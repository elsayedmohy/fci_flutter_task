import 'package:first_project/secondScreen.dart';
import "package:flutter/material.dart";

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.fastfood),
        elevation: 0,
        title: Text('FoodApp',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
        actions: [
          Icon(Icons.account_circle),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.ac_unit_outlined),
          SizedBox(
            width: 10,
          ),
        ],
        backgroundColor: Colors.pinkAccent,
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
        Center(
          child:
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                child: Text('Go to Details'),
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.pink),
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
            ),
        ),
      ]),
    );
  }
}
