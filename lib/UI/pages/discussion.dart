import 'package:flutter/material.dart';
import 'package:kcmitapp/UI/widgets/messagedisplaywidget.dart';
import 'package:kcmitapp/UI/widgets/messagesenderwidget.dart';

class DiscussioPage extends StatefulWidget {
  const DiscussioPage({Key? key}) : super(key: key);

  @override
  _DiscussionPageState createState() => _DiscussionPageState();
}

class _DiscussionPageState extends State<DiscussioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        title: const Text('Discussion Forum'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: MessageDisplay()),
            MessageSenderWidget(),
          ],
        ),
      ),
    );
  }
}
