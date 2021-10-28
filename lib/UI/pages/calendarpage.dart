import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Academic Calendar"),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.chevron_left_outlined,
                  size: 40.0,
                ),
                Expanded(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "October 2021",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ))),
                Icon(
                  Icons.chevron_right_outlined,
                  size: 40.0,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 1),
              children: [
                TableRow(children: [
                  Column(children: [
                    Text('Sun', style: TextStyle(fontSize: 14.0))
                  ]),
                  Column(children: [
                    Text('Mon', style: TextStyle(fontSize: 14.0))
                  ]),
                  Column(children: [
                    Text('Tues', style: TextStyle(fontSize: 14.0))
                  ]),
                  Column(children: [
                    Text('Wed', style: TextStyle(fontSize: 14.0))
                  ]),
                  Column(children: [
                    Text('Thurs', style: TextStyle(fontSize: 14.0))
                  ]),
                  Column(children: [
                    Text('Fri', style: TextStyle(fontSize: 14.0))
                  ]),
                  Column(children: [
                    Text('Sat', style: TextStyle(fontSize: 14.0))
                  ]),
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
