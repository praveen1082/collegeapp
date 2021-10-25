import 'package:flutter/material.dart';

class RoutinePage extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'SUNDAY'),
    Tab(text: 'MONDAY'),
    Tab(text: 'TUESDAY'),
    Tab(text: 'WEDNESDAY'),
    Tab(text: 'THURSDAY'),
    Tab(text: 'FRIDAY'),
    //Tab(text: 'SATURDAY'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[900],
          titleSpacing: 0,
          title: const ListTile(
            title: Text(
              "Routine",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            subtitle: Text(
              "BIM 7th B",
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
          // title: RichText(
          //     text: TextSpan(
          //         text: "Routine",
          //         style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          //         children: [
          //           const SizedBox(height: 10.0,),
          //       TextSpan(
          //           text: "BIM 7th B",
          //           style:
          //               TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400))
          //     ])),
          // flexibleSpace: SizedBox(
          //   height: 20,
          // ),
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              labelColor: Colors.deepOrange,
              indicatorColor: Colors.deepOrange,
              isScrollable: true,
              unselectedLabelColor: Colors.white,
              tabs: myTabs),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.sync,
            size: 25,
          ),
          backgroundColor: Colors.deepOrange,
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            final String? label = tab.text;
            return ListView.builder(
                itemCount: 5,
                //physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color:
                              index % 2 == 0 ? Colors.grey[200] : Colors.white,
                        ),
                        //margin: EdgeInsets.only(
                        //bottom: 5, top: 0, left: 0, right: 0),
                        // padding: EdgeInsets.symmetric(
                        //     horizontal: 10.0, vertical: 10.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: index == 0
                                              ? Text(
                                                  "Object Oriented Analysis and Design ",
                                                  style: TextStyle(
                                                      fontSize: 16.0,
                                                      color:
                                                          Colors.lightBlue[900],
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )
                                              : index == 1
                                                  ? Text(
                                                      "Organization Behavior",
                                                      style: TextStyle(
                                                          fontSize: 18.0,
                                                          color: Colors
                                                              .lightBlue[900],
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    )
                                                  : index == 2
                                                      ? Text(
                                                          "MIS",
                                                          style: TextStyle(
                                                              fontSize: 18.0,
                                                              color: Colors
                                                                      .lightBlue[
                                                                  900],
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        )
                                                      : Text(
                                                          "Software Engineering",
                                                          style: TextStyle(
                                                              fontSize: 18.0,
                                                              color: Colors
                                                                      .lightBlue[
                                                                  900],
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "DINESH BAJRACHARYA",
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.deepOrange,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(children: [
                                Row(
                                  children: const [
                                    Text(
                                      "7:00 - 7:45",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.0,
                                          color: Colors.green),
                                    )
                                  ],
                                )
                              ]),
                            )
                          ],
                        ),
                      )
                    ],
                  );
                });
          }).toList(),
        ),
      ),
    );
  }
}
