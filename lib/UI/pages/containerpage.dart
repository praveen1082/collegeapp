import 'package:flutter/material.dart';
import 'package:kcmitapp/UI/pages/attendancepage.dart';
import 'package:kcmitapp/UI/pages/gallerypage.dart';
import 'package:kcmitapp/UI/pages/home.dart';
import 'package:kcmitapp/UI/pages/resultpage.dart';
import 'package:kcmitapp/UI/widgets/drawerwidget.dart';

class ContainerPage extends StatefulWidget {
  final title;
  const ContainerPage({Key? key, this.title}) : super(key: key);

  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  List _options = ["Share App", "Rate Us", "Disclaimer"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
              itemBuilder: (BuildContext bc) {
                return _options
                    .map((options) => PopupMenuItem(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(options),
                          ),
                          value: options,
                        ))
                    .toList();
              },
              onSelected: (value) {
                setState(() {});
              },
            ),
          ],
          elevation: 0,
          backgroundColor: Colors.blue[900],
          titleSpacing: 10.0,
          title: Text(widget.title),
        ),
        drawer: DrawerWidget(),
        body: Home(),
      ),
    );
  }
}
