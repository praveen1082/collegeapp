import 'package:flutter/material.dart';
import 'package:kcmitapp/UI/pages/attendancepage.dart';
import 'package:kcmitapp/UI/pages/gallerypage.dart';
import 'package:kcmitapp/UI/pages/home.dart';
import 'package:kcmitapp/UI/pages/resultpage.dart';
import 'package:kcmitapp/UI/widgets/appbarwidget.dart';
import 'package:kcmitapp/UI/widgets/drawerwidget.dart';

class ContainerPage extends StatefulWidget {
  final page;
  final title;
  const ContainerPage({Key? key, this.title, this.page}) : super(key: key);

  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: BaseAppBar(
          title: widget.title,
          appBar: AppBar(),
        ),
        drawer: DrawerWidget(),
        body: widget.page,
      ),
    );
  }
}
