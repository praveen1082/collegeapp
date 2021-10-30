import 'package:flutter/material.dart';
import 'package:kcmitapp/UI/pages/discussion.dart';
import 'package:kcmitapp/UI/pages/notice.dart';
import 'package:kcmitapp/UI/pages/resources.dart';
import 'package:kcmitapp/UI/pages/routine.dart';
import 'package:kcmitapp/UI/widgets/alertwidget.dart';
import 'package:kcmitapp/UI/widgets/optionwidget.dart';

class OptionsBarWidget extends StatelessWidget {
  const OptionsBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              OptionWidget(
                imageUrl:
                    'https://icons.iconarchive.com/icons/grafikartes/flat-retro-modern/512/messages-icon.png',
                page: Notice(),
                title: "Notice",
                drawerselected: 1,
              ),
              SizedBox(
                width: 10,
              ),
              OptionWidget(
                imageUrl:
                    'http://zucmanlab.com/wp-content/uploads/2018/11/download-1915753_960_720.png',
                page: Resources(),
                title: "Resource",
                drawerselected: 2,
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              OptionWidget(
                imageUrl:
                    'https://icons-for-free.com/iconfiles/png/512/calendar-131964752454737242.png',
                page: showAlertDialog(context),
                title: "Routine",
                drawerselected: 8,
              ),
              SizedBox(
                width: 10,
              ),
              OptionWidget(
                imageUrl:
                    'https://cdn4.iconfinder.com/data/icons/got-an-idea/128/discussion-512.png',
                page: DiscussioPage(),
                title: "Discussion Forum",
                drawerselected: 9,
              )
            ],
          ),
        ),
      ],
    );
  }
}

showAlertDialog(BuildContext context) {
  String? facultydropdownValue = 'BIM';
  String? semesterdropdownValue = '1st';
  String? sectiondropdownValue = 'A';
  // Create button
  Widget okButton = TextButton(
    child: Text(
      "OK",
      style: TextStyle(color: Colors.deepOrange),
    ),
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RoutinePage()));
    },
  );
  Widget cancelButton = TextButton(
    child: Text("CANCEL", style: TextStyle(color: Colors.deepOrange)),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    titlePadding: EdgeInsets.all(8.0),
    contentPadding: EdgeInsets.all(8.0),
    //insetPadding: EdgeInsets.fromLTRB(5, 160, 5, 170),
    title: Text("Please select class: "),
    content: StatefulBuilder(builder: (context, setstate) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
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
                      items: <String>['BIM', 'BBA', 'BCA']
                          .map<DropdownMenuItem<String>>((String value) {
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
          Row(
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
                      onChanged: (String? newValue) {
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
                        '7th',
                        '8th'
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [Text("Section")],
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
                      isExpanded: true,
                      underline: SizedBox(),
                      value: sectiondropdownValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 0,
                      //style: const TextStyle(color: Colors.deepPurple),
                      onChanged: (String? newValue) {
                        setstate(() {
                          sectiondropdownValue = newValue;
                        });
                      },
                      items: <String>['A', 'B']
                          .map<DropdownMenuItem<String>>((String value) {
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
        ],
      );
    }),
    actions: [
      cancelButton,
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
