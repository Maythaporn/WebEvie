import 'package:flutter/material.dart';

import 'package:work03/owner/financial_statics/expense/date.dart';
import 'package:work03/owner/help_center/helpcenter.dart';
import 'package:work03/owner/feedback/feedback.dart';
import 'package:work03/owner/usage_statics/date.dart';

class option extends StatelessWidget {
  @override
  int select = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => account(),
                      settings: RouteSettings(name: '/expense')),
                );
              },
              child: Container(
                  height: 65,
                  width: 100,
                  child: Text("add account",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                          fontSize: 18))),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => company(),
                      settings: RouteSettings(name: '/income')),
                );
              },
              child: Container(
                  height: 65,
                  width: 100,
                  child: Text("company",
                      style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => charging(),
                      settings: RouteSettings(name: '/income')),
                );
              },
              child: Container(
                  height: 65,
                  width: 100,
                  child: Text("company",
                      style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => addmaintainace(),
                      settings: RouteSettings(name: '/income')),
                );
              },
              child: Container(
                  height: 65,
                  width: 100,
                  child: Text("add",
                      style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => request(),
                      settings: RouteSettings(name: '/income')),
                );
              },
              child: Container(
                  height: 65,
                  width: 100,
                  child: Text("request",
                      style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
            ),
          ],
        ),
      ),
    );
  }
}

request() {}

addmaintainace() {}

account() {}

company() {}

charging() {}

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "BUSINESS NAME",
              style: TextStyle(
                  fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
            ),
            automaticallyImplyLeading: false,
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.construction_rounded),
                tooltip: 'Contact',
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text('Contact')));
                },
              ),
            ]),
        body: Container(
            child: Row(
          children: <Widget>[
            Container(
              width: 255,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(35)),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                  ),
                  GestureDetector(
                    child: Container(
                      width: 220,
                      height: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/logo.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(height: 100.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => usage_date_homepage(),
                            settings: RouteSettings(name: '/usage')),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Usage Statics',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => financial_date_homepage(),
                            settings: RouteSettings(name: '/financial')),
                      );
                    },
                    child: Container(
                      width: 230,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Financial Statics',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HelpCenter(),
                            settings: RouteSettings(name: '/helpcenter')),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Help Center',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Feedbacks(),
                            settings: RouteSettings(name: '/feedback')),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Feedback',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Settings(),
                            settings: RouteSettings(name: '/settings')),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color:
                              selectedIndex == 0 ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        'Settings',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: selectedIndex == 0
                                ? Colors.white
                                : Colors.black54),
                      ),
                    ),
                  ),
                  SizedBox(height: 160.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Settings(),
                            settings: RouteSettings(name: '/')),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 65,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/logout.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Container(
                height: 800,
                width: 1000,
                padding: EdgeInsets.only(bottom: 500),
                child: option()),
          ],
        )));
  }
}
