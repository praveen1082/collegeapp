import 'package:flutter/material.dart';
import 'package:kcmitapp/UI/pages/containerpage.dart';
import 'package:kcmitapp/UI/pages/routine.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? facultydropdownValue = 'BIM';
    String? semesterdropdownValue = '1st';
    String? sectiondropdownValue = 'A';
    Widget okButton = TextButton(
      child: Text(
        "OK",
        style: TextStyle(color: Colors.deepOrange),
      ),
      onPressed: () {
        Navigator.of(context).pop();
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ContainerPage(
                      page: RoutinePage(),
                      title: "Routine",
                      subtitle:
                          "${facultydropdownValue} ${semesterdropdownValue} ${sectiondropdownValue}",
                      selected: 8,
                    )));
      },
    );
    Widget cancelButton = TextButton(
      child: Text("CANCEL", style: TextStyle(color: Colors.deepOrange)),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    return AlertDialog(
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Text("Faculty")),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: DropdownButton<String>(
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
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Text("Semester")),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: DropdownButton<String>(
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
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Text("Section")),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: DropdownButton<String>(
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
  }
}
