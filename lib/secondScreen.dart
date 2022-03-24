import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(children: [
        FractionallySizedBox(
          child: Image.asset('assets/images/image3.jpg'),
          widthFactor: 1,
        ),
        SizedBox(height: 10),
        Text(
          'Product Name',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 40,
            top: 20,
            right: 40,
            bottom: 20,
          ),
          child: Text(
              'this is sample Text this is sample Text this is sample Text this is sample Text this is sample Text',style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        Text("Quantity: 1"),
        SizedBox(
          height: 30,
        ),
        Padding(
            padding: const EdgeInsets.only(
              left: 40,
              top: 20,
              right: 40,
              bottom: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order Total',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('10.99 \$',style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            )),
        Padding(
            padding: const EdgeInsets.only(
              left: 40,
              top: 20,
              right: 40,
              bottom: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Add To Cart'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white))),
                ElevatedButton.icon(
                    onPressed: () {},
                    label: Text('Cancel'),
                    icon: Icon(
                      Icons.cancel,
                      size: 24.0,
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white))),
              ],
            )),
      ]),
    );
  }
}
