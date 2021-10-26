import 'package:flutter/material.dart';
import 'package:kcmitapp/UI/widgets/messagedisplaywidget.dart';

class MessageSenderWidget extends StatelessWidget {
  MessageSenderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String typedValue;
    TextEditingController messagecontroller = new TextEditingController();
    return Form(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.lightBlue[900],
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Container(
                        //padding: EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0))),
                        child: TextFormField(
                          controller: messagecontroller,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(Icons.send),
                                onPressed: () {
                                  typedValue = messagecontroller.text;
                                  MessageDisplay(sending: true);
                                },
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 15.0),
                              border: InputBorder.none,
                              hintText: 'Type here'),
                        ),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.white,
                    size: 35.0,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Icon(
                    Icons.perm_media_outlined,
                    color: Colors.white,
                    size: 35.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
