import "package:flutter/material.dart";

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        backgroundColor: Colors.pink,
      ),
      body: Column(children: [
        Image.asset('assets/images/image2.jpg'),
        Text('this is sample text'),
      ]),
    );
  }
}
