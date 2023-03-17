import 'package:flutter/material.dart';
import 'package:work03/second.screen.dart';
import 'package:work03/first.screen.dart';
import 'package:work03/third.screen.dart';
import 'package:work03/map/map_screen.dart';

final Map<String, WidgetBuilder> map = {
  '/home': (BuildContext context) => FirstScreen(),
  '/secondScreen': (BuildContext context) => SecondScreen(),
  '/thirdScreen': (BuildContext context) => ThirdScreen(),
};

String initailRoute = '/home';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: initailRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}
