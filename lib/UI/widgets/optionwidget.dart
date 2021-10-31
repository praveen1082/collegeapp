import 'package:flutter/material.dart';
import 'package:kcmitapp/UI/pages/containerpage.dart';
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
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertWidget();
    },
  );
}
