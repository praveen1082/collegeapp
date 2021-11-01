import 'package:flutter/material.dart';
import 'dart:async';

class AttendancePage extends StatefulWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  String valueofbutton = "SELECT DATE";
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015),
        lastDate: DateTime(2025));
    if (picked != null && picked != selectedDate)
      setState(() {
        valueofbutton = picked.toString().substring(0, 10);

        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    String? sectiondropdownvalue = "A";
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendance"),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                border: Border.all(color: Colors.lightBlue, width: 1),
              ),
              //color: Colors.red,
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "User Category: ",
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox(width: 10.0)),
                  Expanded(
                    child: Text("BIM2017",
                        style: TextStyle(
                          fontSize: 16,
                        )),
                  ),
                ],
              ),
            ),
          ),
          StatefulBuilder(builder: (context, setstate) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  border: Border.all(color: Colors.lightBlue, width: 1),
                ),
                //color: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Text("Section")),
                    Expanded(
                        child: SizedBox(
                      height: 15.0,
                    )),
                    Expanded(
                      child: DropdownButton<String>(
                        underline: SizedBox(),
                        isExpanded: true,
                        value: sectiondropdownvalue,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 0,
                        //style: const TextStyle(color: Colors.deepPurple),
                        onChanged: (newValue) {
                          setstate(() {
                            sectiondropdownvalue = newValue;
                          });
                        },
                        items: <String>["A", "B"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      _selectDate(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[900],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: EdgeInsets.all(15),
                      child: Center(
                          child: Text(
                        valueofbutton,
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
