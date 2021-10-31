import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../utils.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[900],
          title: Text('Academic Calendar'),
        ),
        body: ListView(
          children: [
            TableCalendar(
              //shouldFillViewport: true,

              startingDayOfWeek: StartingDayOfWeek.sunday,
              headerStyle: HeaderStyle(
                  formatButtonShowsNext: false,
                  formatButtonVisible: false,
                  titleCentered: true),
              weekendDays: [6],
              firstDay: kFirstDay,
              lastDay: kLastDay,
              calendarStyle: CalendarStyle(
                  // weekendTextStyle: TextStyle(color: Colors.red),
                  selectedDecoration: BoxDecoration(color: Colors.blueGrey),
                  todayDecoration: BoxDecoration(
                    color: Colors.green[400],
                  )),
              focusedDay: _focusedDay,
              calendarFormat: CalendarFormat.month,
              selectedDayPredicate: (day) {
                // Use `selectedDayPredicate` to determine which day is currently selected.
                // If this returns true, then `day` will be marked as selected.

                // Using `isSameDay` is recommended to disregard
                // the time-part of compared DateTime objects.
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(_selectedDay, selectedDay)) {
                  // Call `setState()` when updating the selected day
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                }
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  // Call `setState()` when updating calendar format
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                // No need to call `setState()` here
                _focusedDay = focusedDay;
              },
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 20, width: 25, color: Colors.green[400]),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("Today")
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: 20, width: 25, color: Colors.red),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("Holiday")
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(height: 20, width: 25, color: Colors.amber),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("Exam")
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 20, width: 25, color: Colors.blueAccent),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("Fee Submit Date")
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 20, width: 25, color: Colors.green[800]),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("Class Start Date")
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 20,
                              width: 25,
                              color: Colors.purpleAccent),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text("Other Events")
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.teal, boxShadow: [
                    BoxShadow(
                        blurRadius: 2.0,
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0))
                  ]),
                  height: 50.0,
                  child: Center(
                    child: Text(
                      "Events",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
