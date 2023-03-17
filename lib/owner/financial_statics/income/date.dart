import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:work03/owner/usage_statics/date.dart';

import 'package:work03/owner/financial_statics/expense/date.dart';
import 'package:work03/owner/help_center/helpcenter.dart';
import 'package:work03/owner/feedback/feedback.dart';
import 'package:work03/owner/setting/settings.dart';

//import 'month.dart';
//import 'year.dart';

class income_date_finance extends StatelessWidget {
  @override
  int select = 0;
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
                    builder: (context) => financial_income_date_homepage(),
                  ),
                );
              },
              child: Container(
                width: 65,
                height: 22.0,
                decoration: BoxDecoration(
                    color: select == 0 ? Colors.blue : Colors.transparent,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'DATE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: select == 0 ? Colors.white : Colors.black54),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => financial_income_date_homepage(),
                  ),
                );
              },
              child: Container(
                width: 87,
                height: 22.0,
                decoration: BoxDecoration(
                    color: select == 1 ? Colors.blue : Colors.transparent,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'MONTH',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: select == 1 ? Colors.white : Colors.black54),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => financial_date_homepage(),
                  ),
                );
              },
              child: Container(
                width: 65,
                height: 22.0,
                decoration: BoxDecoration(
                    color: select == 2 ? Colors.blue : Colors.transparent,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'YEAR',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: select == 2 ? Colors.white : Colors.black54),
                ),
              ),
            ),
            SizedBox(
              width: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => financial_date_homepage(),
                      settings: RouteSettings(name: '/expense')),
                );
              },
              child: Container(
                  height: 65,
                  width: 85,
                  child: Text("Expense",
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
                      builder: (context) => financial_income_date_homepage(),
                      settings: RouteSettings(name: '/income')),
                );
              },
              child: Container(
                  height: 65,
                  width: 85,
                  child: Text("Income",
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                          fontSize: 18))),
            ),
          ],
        ),
      ),
    );
  }
}

//ตารางข้อมูล

//หน้า1
class data_table extends StatefulWidget {
  const data_table({Key? key});

  @override
  State<data_table> createState() => _data_tableState();
}

class _data_tableState extends State<data_table> {
  bool _isBlue = false; // to keep track of the icon color
  List<dynamic> data = [
    {
      "Branch": "Wat sutat",
      "Charging financial": 28,
      "Electricity financial (KWH)": 280,
      "Option": '',
    },
    {
      "Branch": "henry",
      "Charging financial": 28,
      "Electricity financial (KWH)": 28,
      "Option": '',
    },
  ];
  List<dynamic> filteredData = [];

  final searchController = TextEditingController();

  @override
  void initState() {
    filteredData = data;
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _onSearchTextChanged(String text) {
    setState(() {
      filteredData = text.isEmpty
          ? data
          : data
              .where((item) =>
                  item['Branch'].toLowerCase().contains(text.toLowerCase()))
              .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: searchController,
          decoration: const InputDecoration(
            hintText: 'Search A Branch Here !!',
            hintStyle: TextStyle(fontFamily: 'Montserrat'),
            border: OutlineInputBorder(),
          ),
          onChanged: _onSearchTextChanged,
        ),
      ),
      Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            width: double.infinity,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('Branch',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat')),
                ),
                DataColumn(
                  label: Text('Charging financial',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat')),
                  numeric: true,
                ),
                DataColumn(
                  label: Text('Electricity financial (KWH)',
                      style: TextStyle(fontFamily: 'Montserrat'),
                      textAlign: TextAlign.center),
                  numeric: true,
                ),
                DataColumn(
                  label: Text('Option',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat')),
                ),
              ],
              rows: List.generate(filteredData.length, (index) {
                final item = filteredData[index];
                return DataRow(
                  cells: [
                    DataCell(Text(item['Branch'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Montserrat'))),
                    DataCell(Text(
                      item['Charging financial'].toString(),
                      style: TextStyle(fontFamily: 'Montserrat'),
                    )),
                    DataCell(Text(
                        item['Electricity financial (KWH)'].toString(),
                        style: TextStyle(fontFamily: 'Montserrat'))),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.format_list_bulleted),
                        tooltip: 'See more',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  financial1_income_date_homepage(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    ]);
  }
}

//หน้า2
class data_table_option1 extends StatefulWidget {
  const data_table_option1({Key? key});

  @override
  State<data_table_option1> createState() => _data_table_option1State();
}

class _data_table_option1State extends State<data_table_option1> {
  bool _isBlue = false; // to keep track of the icon color
  List<dynamic> data = [
    {
      "Charging Spot": "1",
      "Charging Usage": 28,
      "Electricity Usage (KWH)": 280,
      "Option": '',
    },
    {
      "Charging Spot": "2",
      "Charging Usage": 28,
      "Electricity Usage (KWH)": 28,
      "Option": '',
    },
  ];
  List<dynamic> filteredData = [];

  final searchController = TextEditingController();

  @override
  void initState() {
    filteredData = data;
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _onSearchTextChanged(String text) {
    setState(() {
      filteredData = text.isEmpty
          ? data
          : data
              .where((item) => item['Charging Spot']
                  .toLowerCase()
                  .contains(text.toLowerCase()))
              .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: searchController,
          decoration: const InputDecoration(
            hintText: 'Search A Charging Spot Here !!',
            hintStyle: TextStyle(fontFamily: 'Montserrat'),
            border: OutlineInputBorder(),
          ),
          onChanged: _onSearchTextChanged,
        ),
      ),
      Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            width: double.infinity,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('Charging Spot',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat')),
                ),
                DataColumn(
                  label: Text('Charging Usage',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat')),
                  numeric: true,
                ),
                DataColumn(
                  label: Text('Electricity Usage (KWH)',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat')),
                  numeric: true,
                ),
                DataColumn(
                  label: Text('Option',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat')),
                ),
              ],
              rows: List.generate(filteredData.length, (index) {
                final item = filteredData[index];
                return DataRow(
                  cells: [
                    DataCell(Text(item['Charging Spot'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Montserrat'))),
                    DataCell(Text(item['Charging Usage'].toString(),
                        style: TextStyle(fontFamily: 'Montserrat'))),
                    DataCell(Text(item['Electricity Usage (KWH)'].toString(),
                        style: TextStyle(fontFamily: 'Montserrat'))),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.format_list_bulleted),
                        tooltip: 'See more',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => usage2_date_homepage(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    ]);
  }
}

//หน้า

//หน้า1(Home)

double total_charge = 50;
double total_electric = 250;

class financial_income_date_homepage extends StatefulWidget {
  @override
  _financial_income_date_homepageState createState() =>
      _financial_income_date_homepageState();
}

class _financial_income_date_homepageState
    extends State<financial_income_date_homepage> {
  int selectedIndex = 0;
  int choose = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("BUSINESS NAME",
              style: TextStyle(
                  fontFamily: 'Montserrat', fontWeight: FontWeight.bold)),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          child: Row(
            children: <Widget>[
              Container(
                width: 255,
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35)),
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
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
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
                              builder: (context) =>
                                  financial_income_date_homepage(),
                              settings: RouteSettings(name: '/financial')),
                        );
                      },
                      child: Container(
                        width: 200,
                        height: 25.0,
                        decoration: BoxDecoration(
                            color:
                                selectedIndex == 0 ? Colors.blue : Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          'Financial Statics',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: selectedIndex == 0
                                  ? Colors.white
                                  : Colors.black54),
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
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
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
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          'Settings',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ),
                    ),
                    SizedBox(height: 160.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Feedbacks(),
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
                width: 30,
              ),
              Container(
                  height: 800,
                  width: 600,
                  padding: EdgeInsets.only(bottom: 500),
                  child: income_date_finance()),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 900,
                    width: 950,
                    padding: EdgeInsets.only(top: 500, right: 100),
                    child: data_table(),
                  )),
              Container(
                height: 600,
                width: 500,
                alignment: Alignment(-7.6, -1),
                child: Text(
                  "Total Income Cost",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 47, 216, 67)),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 400,
                width: 100,
                alignment: Alignment(-49.5, -1.2),
                child: Text(
                  total_electric_2.toString(),
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              Container(
                height: 400,
                width: 500,
                alignment: Alignment(-105, -0.5),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Charging Income : ",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontSize: 18)),
                      TextSpan(
                          text: total1_electric.toString(),
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Montserrat',
                              fontSize: 18)),
                      TextSpan(
                          text: "            ",
                          style: TextStyle(
                              fontFamily: 'Montserrat', fontSize: 18)),
                      TextSpan(
                          text: "Parking Income : ",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      TextSpan(
                          text: total1_electric.toString(),
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Montserrat',
                              fontSize: 18)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//หน้า 2

double total1_charge = 50;
double total1_electric = 250;

class financial1_income_date_homepage extends StatefulWidget {
  @override
  _financial1_income_date_homepageState createState() =>
      _financial1_income_date_homepageState();
}

class _financial1_income_date_homepageState
    extends State<financial1_income_date_homepage> {
  int selectedIndex = 0;
  int choose = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("BUSINESS NAME",
              style: TextStyle(
                  fontFamily: 'Montserrat', fontWeight: FontWeight.bold)),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded), // set your own icon
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => financial_income_date_homepage(),
                ),
              );
            },
            tooltip: 'Back',
          ),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          child: Row(
            children: <Widget>[
              Container(
                width: 255,
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35)),
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
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
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
                              builder: (context) =>
                                  financial_income_date_homepage(),
                              settings: RouteSettings(name: '/financial')),
                        );
                      },
                      child: Container(
                        width: 200,
                        height: 25.0,
                        decoration: BoxDecoration(
                            color:
                                selectedIndex == 0 ? Colors.blue : Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          'Financial Statics',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: selectedIndex == 0
                                  ? Colors.white
                                  : Colors.black54),
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
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
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
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          'Settings',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ),
                    ),
                    SizedBox(height: 160.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Feedbacks(),
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
                width: 30,
              ),
              Container(
                  height: 800,
                  width: 600,
                  padding: EdgeInsets.only(bottom: 500),
                  child: income_date_finance()),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 900,
                    width: 950,
                    padding: EdgeInsets.only(top: 500, right: 100),
                    child: data_table_option1(),
                  )),
              Container(
                height: 600,
                width: 500,
                alignment: Alignment(-7.6, -1),
                child: Text(
                  "Total Income Cost",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 47, 216, 67)),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 400,
                width: 100,
                alignment: Alignment(-49.5, -1.2),
                child: Text(
                  total_electric_2.toString(),
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              Container(
                height: 400,
                width: 500,
                alignment: Alignment(-105, -0.5),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Charging Income : ",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontSize: 18)),
                      TextSpan(
                          text: total1_electric.toString(),
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Montserrat',
                              fontSize: 18)),
                      TextSpan(
                          text: "            ",
                          style: TextStyle(
                              fontFamily: 'Montserrat', fontSize: 18)),
                      TextSpan(
                          text: "Parking Income : ",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      TextSpan(
                          text: total1_electric.toString(),
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: 'Montserrat',
                              fontSize: 18)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
