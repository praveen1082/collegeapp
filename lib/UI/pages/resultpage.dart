import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    String? semesterdropdownValue = '1st';
    String? facultydropdownValue = 'BIM';
    return Scaffold(
        appBar: AppBar(
          title: Text("Result"),
          backgroundColor: Colors.lightBlue[900],
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            StatefulBuilder(builder: (context, setstate) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    border: Border.all(color: Colors.lightBlue, width: 1),
                  ),
                  //color: Colors.red,
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [Text("Faculty")],
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 10.0,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            DropdownButton<String>(
                              underline: SizedBox(),
                              isExpanded: true,
                              value: facultydropdownValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              elevation: 0,
                              //style: const TextStyle(color: Colors.deepPurple),
                              onChanged: (newValue) {
                                setstate(() {
                                  facultydropdownValue = newValue;
                                });
                              },
                              items: <String>[
                                'BIM',
                                'BBA',
                                'BCA'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
            StatefulBuilder(builder: (context, setstate) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    border: Border.all(color: Colors.lightBlue, width: 1),
                  ),
                  //color: Colors.red,
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [Text("Semester")],
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 10.0,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            DropdownButton<String>(
                              underline: SizedBox(),
                              isExpanded: true,
                              value: semesterdropdownValue,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              elevation: 0,
                              //style: const TextStyle(color: Colors.deepPurple),
                              onChanged: (newValue) {
                                setstate(() {
                                  semesterdropdownValue = newValue;
                                });
                              },
                              items: <String>[
                                '1st',
                                '2nd',
                                '3rd',
                                '4th',
                                '5th',
                                '6th',
                                '7th marketing',
                                '8th marketing',
                                '7th finance',
                                '8th finance'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
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
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.deepOrange, width: 1.5))),
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        autofocus: true,
                        cursorColor: Colors.deepOrange,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelStyle: TextStyle(
                                color: Colors.deepOrange, fontSize: 14.0),
                            border: InputBorder.none,
                            labelText: "Symbol number, Eg. 4294/12"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[900],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: EdgeInsets.all(15),
                      child: Center(
                          child: Text(
                        "SEE RESULT",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Name: Praveen Panta"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Symbol No: 7927/17"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Table(
                columnWidths: {
                  0: FlexColumnWidth(),
                  1: FlexColumnWidth(),
                  2: FlexColumnWidth()
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                //border: TableBorder.all(width: 0.5),
                children: [
                  TableRow(
                      //decoration: Decoration(),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("S.N"),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text("Subject"),
                          ],
                        ),
                        Column(
                          children: [
                            Text("GPA Grade"),
                          ],
                        )
                      ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("1"),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text("Subject Name"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("3.00"),
                      ],
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("2"),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text("Subject name 2"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("3.18"),
                      ],
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("2"),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text("Subject name 2"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("3.18"),
                      ],
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("2"),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text("Subject name 2"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("3.18"),
                      ],
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("2"),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text("Subject name 2"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("3.18"),
                      ],
                    )
                  ]),
                  TableRow(children: [
                    Column(
                      children: [
                        Text(
                          "SGPA",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("3.06"),
                      ],
                    ),
                    Column(
                      children: [],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [
                        Text(
                          "Grade",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("B+"),
                      ],
                    ),
                    Column(
                      children: [],
                    ),
                  ]),
                  TableRow(children: [
                    Column(
                      children: [
                        Text(
                          "Remarks",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("First Division"),
                      ],
                    ),
                    Column(
                      children: [],
                    ),
                  ]),
                ],
              ),
            )
          ],
        ));
  }
}
