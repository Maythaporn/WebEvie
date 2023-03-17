import 'package:flutter/material.dart';
import 'package:work03/address.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Address Form Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Address Form'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: AddressForm(),
        ),
      ),
    );
  }
}
