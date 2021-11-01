import 'package:flutter/material.dart';

class FacultyPage extends StatelessWidget {
  const FacultyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                //flex: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    'https://image.freepik.com/free-photo/mand-holding-cup_1258-340.jpg',
                                  ),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1.0,
                                      offset: Offset(0.0, 1.0),
                                      color: Colors.grey)
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                            //height: 100,
                          ),
                          Positioned(
                              right: 0,
                              left: 0,
                              bottom: 0,
                              child: Container(
                                // width: double.infinity,
                                color: Colors.black38,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Praveen Panta",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ]),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                //flex: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    'https://image.freepik.com/free-photo/mand-holding-cup_1258-340.jpg',
                                  ),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1.0,
                                      offset: Offset(0.0, 1.0),
                                      color: Colors.grey)
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                            //height: 100,
                          ),
                          Positioned(
                              right: 0,
                              left: 0,
                              bottom: 0,
                              child: Container(
                                // width: double.infinity,
                                color: Colors.black38,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Praveen Panta ",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ]),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
