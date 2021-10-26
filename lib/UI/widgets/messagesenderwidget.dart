import 'package:flutter/material.dart';

class MessageSenderWidget extends StatelessWidget {
  const MessageSenderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController messagecontroller = new TextEditingController();
    return Form(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
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
                        borderRadius: BorderRadius.all(Radius.circular(4.0))),
                    child: TextFormField(
                      controller: messagecontroller,
                      decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.send),
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
      ),
    );
  }
}
