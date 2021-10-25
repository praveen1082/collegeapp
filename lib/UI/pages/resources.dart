import 'package:flutter/material.dart';

class Resources extends StatelessWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        elevation: 0,
        backgroundColor: Colors.blue[900],
        titleSpacing: 10.0,
        title: const Text("Resource"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //height: 80.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Column(
                        //   children: [
                        //     Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: Container(
                        //         color: Colors.white,
                        //         height: 80.0,
                        //         child: Image.network(
                        //           'https://icons.iconarchive.com/icons/grafikartes/flat-retro-modern/512/messages-icon.png',
                        //           fit: BoxFit.fill,
                        //         ),
                        //       ),
                        //     )
                        //   ],
                        // ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: const [
                                    Expanded(
                                      child: Text(
                                        "Summer Project Notice",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  children: const [
                                    Expanded(
                                      child: Text("20 Sep 2021 ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.deepOrange)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  color: Colors.white,
                                  height: 60.0,
                                  child: const Icon(
                                    Icons.vertical_align_bottom,
                                    size: 25.0,
                                  )),
                            )
                          ],
                        ),
                        // Column(
                        //   children: [
                        //     Row(
                        //       children: [
                        //         Expanded(
                        //           child: Text(
                        //               "Hello world hfhhsdfjjshladhf sjsdfjhdsgfjhsdgf shdfjhsdgfjgasdjfgjaskddgf sdfjhsdgjhfgasjhdfg"),
                        //         )
                        //       ],
                        //     )
                        //   ],
                        // )
                      ],
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2.0,
                              color: Colors.grey,
                              offset: Offset(0.0, 2.0))
                        ]),
                  ),
                )
              ],
            );
          }),
    ));
  }
}
