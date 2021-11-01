import 'package:flutter/material.dart';

class MessageDisplay extends StatelessWidget {
  final sending;
  MessageDisplay({Key? key, this.sending = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List person = [
      "Sabin",
      "Prabin",
      "Nabin",
      "Rabin",
      "Babin",
      "Rabin",
      "dustbin"
    ];
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (context, index) {
          return ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      //radius: 20.0,
                      maxRadius: 25.0,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 8, bottom: 8, right: 40),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1.0,
                                  offset: Offset(0.0, 1.0),
                                  color: Colors.grey)
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Hello world "),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "12:45 PM",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              sending == true
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 8, left: 40),
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 1.0,
                                        offset: Offset(0.0, 1.0),
                                        color: Colors.grey)
                                  ],
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Hello world "),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "1:00 am",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            //radius: 20.0,
                            maxRadius: 25.0,
                            backgroundColor: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  : Container(),
            ],
          );
        });
  }
}
