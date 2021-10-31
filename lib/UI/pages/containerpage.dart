import 'package:flutter/material.dart';
import 'package:kcmitapp/UI/widgets/appbarwidget.dart';
import 'package:kcmitapp/UI/widgets/drawerwidget.dart';

class ContainerPage extends StatefulWidget {
  final page;
  final title;
  final selected;
  final subtitle;

  const ContainerPage(
      {Key? key, this.title, this.page, this.selected, this.subtitle})
      : super(key: key);

  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: SafeArea(
        child: Scaffold(
          appBar: BaseAppBar(
            title: widget.title,
            subtitle: widget.subtitle,
            appBar: AppBar(),
          ),
          drawer: DrawerWidget(
            select: widget.selected,
          ),
          body: widget.page,
        ),
      ),
    );
  }
}
