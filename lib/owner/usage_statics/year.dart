import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../financial_statics/expense/date.dart';
import '../help_center/helpcenter.dart';
import '../feedback/feedback.dart';
import '../setting/settings.dart';

import 'date.dart';
import 'month.dart';

class year extends StatelessWidget {
  @override
  int select = 2;
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
                    builder: (context) => usage_date_homepage(),
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
                    builder: (context) => usage_month_homepage(),
                  ),
                );
              },
              child: Container(
                width: 85,
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
                    builder: (context) => usage_year_homepage(),
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
          ],
        ),
      ),
    );
  }
}

class year1 extends StatelessWidget {
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
                    builder: (context) => usage1_date_homepage(),
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
                    builder: (context) => usage1_month_homepage(),
                  ),
                );
              },
              child: Container(
                width: 85,
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
                    builder: (context) => usage1_year_homepage(),
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
          ],
        ),
      ),
    );
  }
}

class year2 extends StatelessWidget {
  @override
  int select = 2;
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
                    builder: (context) => usage2_date_homepage(),
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
                    builder: (context) => usage2_month_homepage(),
                  ),
                );
              },
              child: Container(
                width: 85,
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
                    builder: (context) => usage2_year_homepage(),
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
      "Charging Usage": 28,
      "Electricity Usage (KWH)": 280,
      "Option": '',
    },
    {
      "Branch": "henry",
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
                  label: Text('Charging Usage',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat')),
                  numeric: true,
                ),
                DataColumn(
                  label: Text('Electricity Usage (KWH)',
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
                      item['Charging Usage'].toString(),
                      style: TextStyle(fontFamily: 'Montserrat'),
                    )),
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
                              builder: (context) => usage1_year_homepage(),
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
  String dropdownValue = 'All';
  List<Map<String, dynamic>> data = [
    {
      "Charging Spot": "1",
      "Charging Usage": 28,
      "Electricity Usage (KWH)": 280,
      "Date": "15 January 2021",
      "Option": '',
    },
    {
      "Charging Spot": "2",
      "Charging Usage": 28,
      "Electricity Usage (KWH)": 28,
      "Date": "18 February 2021",
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

  void _sortData(String? value) {
    setState(() {
      dropdownValue = value ?? 'All';
      if (dropdownValue == 'All') {
        filteredData = data;
      } else {
        filteredData = data
            .where((item) => item['Date']
                .toLowerCase()
                .contains(dropdownValue.toLowerCase()))
            .toList();
      }
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
      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
      //   child: DropdownButtonFormField<String>(
      //       value: dropdownValue,
      //       icon: const Icon(Icons.keyboard_arrow_down_rounded),
      //       decoration: InputDecoration(
      //         labelText: 'Sort by Month',
      //         labelStyle: TextStyle(
      //             fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
      //         border: OutlineInputBorder(),
      //       ),
      //       items: <String>['All', 'January', 'February']
      //           .map<DropdownMenuItem<String>>((String value) {
      //         return DropdownMenuItem<String>(
      //           value: value,
      //           child: Text(value),
      //         );
      //       }).toList(),
      //       onChanged: _sortData),
      // ),
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
                  label: Text('Date',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat')),
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
                    DataCell(Text(item['Date'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Montserrat'))),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.format_list_bulleted),
                        tooltip: 'See more',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => usage2_year_homepage(),
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

//หน้า 3
class data_table_option2 extends StatefulWidget {
  const data_table_option2({Key? key});

  @override
  State<data_table_option2> createState() => _data_table_option2State();
}

class _data_table_option2State extends State<data_table_option2> {
  bool _isBlue = false; // to keep track of the icon color
  String dropdownValue = 'All';
  List<dynamic> data = [
    {
      "Car Brand": "Tesla",
      "License Number": "สว9044",
      "Charging Usage": 28,
      "Electricity Usage (KWH)": 280,
      "Date": "15 January 2021",
      "Option": '',
    },
    {
      "Car Brand": "Honda",
      "License Number": "กข2544",
      "Charging Usage": 28,
      "Electricity Usage (KWH)": 28,
      "Date": "15 February 2021",
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
                  item['Car Brand']
                      .toLowerCase()
                      .contains(text.toLowerCase()) ||
                  item['License Number']
                      .toLowerCase()
                      .contains(text.toLowerCase()))
              .toList();
    });
  }

  void _sortData(String? value) {
    setState(() {
      dropdownValue = value ?? 'All';
      if (dropdownValue == 'All') {
        filteredData = data;
      } else {
        filteredData = data
            .where((item) => item['Date']
                .toLowerCase()
                .contains(dropdownValue.toLowerCase()))
            .toList();
      }
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
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: DropdownButtonFormField<String>(
            value: dropdownValue,
            icon: const Icon(Icons.keyboard_arrow_down_rounded),
            decoration: InputDecoration(
              labelText: 'Sort by Year',
              labelStyle: TextStyle(
                  fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
              border: OutlineInputBorder(),
            ),
            items: <String>['All', '2020', '2021']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: _sortData),
      ),
      Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            width: double.infinity,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('Car Brand',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat')),
                ),
                DataColumn(
                  label: Text('License Number',
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
                  label: Text('Date',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Montserrat')),
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
                    DataCell(Text(item['Car Brand'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Montserrat'))),
                    DataCell(Text(item['License Number'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Montserrat'))),
                    DataCell(Text(item['Charging Usage'].toString(),
                        style: TextStyle(fontFamily: 'Montserrat'))),
                    DataCell(Text(item['Electricity Usage (KWH)'].toString(),
                        style: TextStyle(fontFamily: 'Montserrat'))),
                    DataCell(Text(item['Date'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Montserrat'))),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.format_list_bulleted),
                        tooltip: 'See Details',
                        onPressed: () => _showDialog(context, index),
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

// usage dialog
  void _showDialog(BuildContext context, int selectedRow) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Usage Data Details',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 120,
                  width: 200,
                  child: Image.asset('images/logo.png')),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Date : ",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                    TextSpan(
                        text: "15 January 2023",
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 18)),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Branch : ",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    TextSpan(
                        text: " < >",
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 18)),
                    TextSpan(text: "                     "),
                    TextSpan(
                      text: "Status : ",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    TextSpan(
                        text: "${data[selectedRow]["Car Brand"]}",
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 18)),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Car Brand : ",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                        text: "${data[selectedRow]["Car Brand"]}",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.0,
                        )),
                    TextSpan(text: "       "),
                    TextSpan(
                      text: "License Number : ",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                        text: "${data[selectedRow]["License Number"]}",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.0,
                        )),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Duration :  ",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                        text: "${data[selectedRow]["Charging Usage"]}",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.0,
                        )),
                    TextSpan(text: "         "),
                    TextSpan(
                      text: "Time : ",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    TextSpan(
                        text: "${data[selectedRow]["Electricity Usage (KWH)"]}",
                        style: TextStyle(
                            fontFamily: 'Montserrat', fontSize: 18.0)),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}

//หน้า

//หน้า1(Home)

double total_charge = 50;
double total_electric = 250;

class usage_year_homepage extends StatefulWidget {
  @override
  _usage_year_homepageState createState() => _usage_year_homepageState();
}

class _usage_year_homepageState extends State<usage_year_homepage> {
  int selectedIndex = 0;

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
                              builder: (context) => usage_year_homepage(),
                              settings: RouteSettings(name: '/usage')),
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
                          'Usage Statics',
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
                  width: 350,
                  padding: EdgeInsets.only(bottom: 500),
                  child: year()),
              SizedBox(width: 10),
              Container(
                height: 700,
                width: 680,
                padding: EdgeInsets.only(
                  top: 200,
                ),
                child: data_table(),
              ),
              Container(
                height: 600,
                width: 300,
                alignment: Alignment(-22, -1),
                child: Text(
                  'Total Charging Usage',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 600,
                width: 300,
                alignment: Alignment(-22, -1),
                child: Text(
                  'Total Electricity Usage',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              Container(
                height: 400,
                width: 100,
                alignment: Alignment(-36.7, -1.2),
                child: Text(
                  total_charge.toString(),
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 400,
                width: 100,
                alignment: Alignment(-34.5, -1.2),
                child: Text(
                  total_electric.toString(),
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//หน้า 2
double total_change_1 = 50;
double total_electric_1 = 2500;

class usage1_year_homepage extends StatefulWidget {
  @override
  _usage1_year_homepageState createState() => _usage1_year_homepageState();
}

class _usage1_year_homepageState extends State<usage1_year_homepage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'BUSINESS NAME',
            style: TextStyle(
              fontFamily: 'Montserrat', // replace with your desired font family
              fontSize: 20, // replace with your desired font size
              fontWeight:
                  FontWeight.bold, // replace with your desired font weight
              color: Colors.white, // replace with your desired font color
            ),
          ),
          automaticallyImplyLeading: false, // disable the default leading icon
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded), // set your own icon
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => usage_year_homepage(),
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
                              builder: (context) => usage_year_homepage(),
                              settings: RouteSettings(name: '/usage')),
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
                          'Usage Statics',
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
                  width: 350,
                  padding: EdgeInsets.only(bottom: 500),
                  child: year1()),
              SizedBox(width: 10),
              Container(
                height: 700,
                width: 850,
                padding: EdgeInsets.only(
                  top: 200,
                ),
                child: data_table_option1(),
              ),
              Container(
                height: 600,
                width: 300,
                alignment: Alignment(-42.5, -1),
                child: Text(
                  "Branch's Charging Usage",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 600,
                width: 350,
                alignment: Alignment(-20, -1),
                child: Text(
                  "Branch's Electricity Usage",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              Container(
                height: 400,
                width: 100,
                alignment: Alignment(-36.5, -1.2),
                child: Text(
                  total_change_1.toString(),
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 400,
                width: 100,
                alignment: Alignment(-47, -1.2),
                child: Text(
                  total_electric_1.toString(),
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//หน้า 3
double total_change_2 = 50;
double total_electric_2 = 250;

class usage2_year_homepage extends StatefulWidget {
  @override
  _usage2_year_homepageState createState() => _usage2_year_homepageState();
}

class _usage2_year_homepageState extends State<usage2_year_homepage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("BUSINESS NAME"),
          automaticallyImplyLeading: false, // disable the default leading icon
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded), // set your own icon
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => usage1_year_homepage(),
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
                              builder: (context) => usage1_year_homepage(),
                              settings: RouteSettings(name: '/usage')),
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
                          'Usage Statics',
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
                  width: 350,
                  padding: EdgeInsets.only(bottom: 500),
                  child: year2()),
              SizedBox(width: 10),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 700,
                    width: 980,
                    padding: EdgeInsets.only(top: 200, right: 100),
                    child: data_table_option2(),
                  )),
              Container(
                height: 600,
                width: 400,
                alignment: Alignment(-38, -1),
                child: Text(
                  "Charging Spot's Charging Usage",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 600,
                width: 400,
                alignment: Alignment(-40, -1),
                child: Text(
                  "Charging Spot's Electricity Usage",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              Container(
                height: 400,
                width: 400,
                alignment: Alignment(-10.5, -1.2),
                child: Text(
                  total_change_2.toString(),
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 400,
                width: 100,
                alignment: Alignment(-55, -1.2),
                child: Text(
                  total_electric_2.toString(),
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
