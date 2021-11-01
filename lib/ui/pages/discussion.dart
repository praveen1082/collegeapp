import 'package:flutter/material.dart';
import 'package:kcmitapp/ui/widgets/messagedisplaywidget.dart';
import 'package:kcmitapp/ui/widgets/messagesenderwidget.dart';

class DiscussioPage extends StatefulWidget {
  const DiscussioPage({Key? key}) : super(key: key);

  @override
  _DiscussionPageState createState() => _DiscussionPageState();
}

class _DiscussionPageState extends State<DiscussioPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: MessageDisplay()),
        MessageSenderWidget(),
      ],
    );
  }
}
