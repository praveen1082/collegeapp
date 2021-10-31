import 'package:flutter/material.dart';
import 'package:kcmitapp/UI/pages/containerpage.dart';
import 'package:kcmitapp/UI/pages/routine.dart';
import 'package:kcmitapp/UI/widgets/alertwidget.dart';

class OptionWidget extends StatelessWidget {
  final imageUrl;
  final page;
  final title;
  final drawerselected;
  const OptionWidget(
      {Key? key, this.imageUrl, this.page, this.title, this.drawerselected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
          onTap: () {
            if (title == "Routine") {
              showAlertDialog(context);
            } else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ContainerPage(
                            page: page,
                            selected: drawerselected,
                            title: title,
                          )));
            }
            //Navigator.pop(context);
          },
          child: customWidget(title, imageUrl)),
    );
  }
}

Widget customWidget(title, imageUrl) {
  return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 2.0,
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 130.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2.0),
                    child: Image.network(imageUrl,
                        //height: 120.0,
                        fit: BoxFit.contain),
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(
          //   height: 30.0,
          // ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title.toString(),
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ));
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

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
