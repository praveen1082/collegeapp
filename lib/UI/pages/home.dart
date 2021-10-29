import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:kcmitapp/UI/pages/calendarpage.dart';
import 'package:kcmitapp/UI/pages/contactpage.dart';
import 'package:kcmitapp/UI/pages/containerpage.dart';
import 'package:kcmitapp/UI/pages/discussion.dart';
import 'package:kcmitapp/UI/pages/facultypage.dart';
import 'package:kcmitapp/UI/pages/notice.dart';
import 'package:kcmitapp/UI/pages/resources.dart';
import 'package:kcmitapp/UI/pages/routine.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        imageSlider(),
        belowSlider(context),
        const SizedBox(
          height: 15,
        ),
        optionsBar(
            context,
            'https://icons.iconarchive.com/icons/grafikartes/flat-retro-modern/512/messages-icon.png',
            'http://zucmanlab.com/wp-content/uploads/2018/11/download-1915753_960_720.png'),
        const SizedBox(
          height: 15,
        ),
        Container(
          color: Colors.blue[900],
          height: 50.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "RECENT NOTICES",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 5.0),
                      child: Container(
                          // height: 60.0,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0),
                                    blurRadius: 3.0)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Expanded(
                                      child: Text(
                                        "Board Exam Routine Published ",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: const [
                                    Expanded(
                                      child: Text(
                                        "29 Sep 2021",
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                );
              }),
        ),
        const SizedBox(
          height: 2.0,
        ),
      ],
    );
  }
}

showAlertDialog(BuildContext context) {
  String? facultydropdownValue = 'BIM';
  String? semesterdropdownValue = '1st';
  String? sectiondropdownValue = 'A';
  // Create button
  Widget okButton = TextButton(
    child: Text(
      "OK",
      style: TextStyle(color: Colors.deepOrange),
    ),
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RoutinePage()));
    },
  );
  Widget cancelButton = TextButton(
    child: Text("CANCEL", style: TextStyle(color: Colors.deepOrange)),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    titlePadding: EdgeInsets.all(8.0),
    contentPadding: EdgeInsets.all(8.0),
    //insetPadding: EdgeInsets.fromLTRB(5, 160, 5, 170),
    title: Text("Please select class: "),
    content: StatefulBuilder(builder: (context, setstate) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [Text("Faculty")],
              ),
              Expanded(
                child: SizedBox(
                  width: 10.0,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    DropdownButton<String>(
                      underline: SizedBox(),
                      isExpanded: true,
                      value: facultydropdownValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 0,
                      //style: const TextStyle(color: Colors.deepPurple),
                      onChanged: (newValue) {
                        setstate(() {
                          facultydropdownValue = newValue;
                        });
                      },
                      items: <String>['BIM', 'BBA', 'BCA']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [Text("Semester")],
              ),
              Expanded(
                child: SizedBox(
                  width: 10.0,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    DropdownButton<String>(
                      underline: SizedBox(),
                      isExpanded: true,
                      value: semesterdropdownValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 0,
                      //style: const TextStyle(color: Colors.deepPurple),
                      onChanged: (String? newValue) {
                        setstate(() {
                          semesterdropdownValue = newValue;
                        });
                      },
                      items: <String>[
                        '1st',
                        '2nd',
                        '3rd',
                        '4th',
                        '5th',
                        '6th',
                        '7th',
                        '8th'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [Text("Section")],
              ),
              Expanded(
                child: SizedBox(
                  width: 10.0,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    DropdownButton<String>(
                      isExpanded: true,
                      underline: SizedBox(),
                      value: sectiondropdownValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 0,
                      //style: const TextStyle(color: Colors.deepPurple),
                      onChanged: (String? newValue) {
                        setstate(() {
                          sectiondropdownValue = newValue;
                        });
                      },
                      items: <String>['A', 'B']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    }),
    actions: [
      cancelButton,
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

Widget imageSlider() {
  return Container(
      height: 240.0,
      width: double.infinity,
      child: ImageSlideshow(
          autoPlayInterval: 5000,
          isLoop: true,
          indicatorColor: Colors.white,
          indicatorBackgroundColor: Colors.grey,
          initialPage: 0,
          children: [
            Image.network(
              'https://images.unsplash.com/20/cambridge.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
              fit: BoxFit.fill,
            ),
            Image.network(
                'https://static.onecms.io/wp-content/uploads/sites/28/2017/03/georgia-berry-college-PRETTYCAMPUS0317.jpg',
                fit: BoxFit.fill),
            Image.network(
                'https://marvel-b1-cdn.bc0a.com/f00000000164722/www.udel.edu/content/udel/en/academics/colleges/_jcr_content/par_udel_panel/columngenerator_163104828/par/columngenerator/par_0/image.img.jpg/1565103752196.jpg',
                fit: BoxFit.fill),
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Trinity_College_-_Great_Court_02.jpg/1200px-Trinity_College_-_Great_Court_02.jpg',
              fit: BoxFit.fill,
            ),
          ]),
      decoration: const BoxDecoration(
        color: Colors.white,
      ));
}

Widget belowSlider(context) {
  return Container(
    height: 110.0,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0.0, 1.0), //(x,y)
          blurRadius: 2.0,
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FacultyPage()));
              },
              child: Container(
                //height: 110.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Colors.grey,
                  //       offset: Offset(1.0, 0.0),
                  //       blurRadius: 2.0)
                  // ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.network(
                              'https://cdn.pngsumo.com/classroom-professor-teacher-teaching-tutor-icon-professor-teaching-png-512_512.png',
                              //height: 120.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            "Faculty",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactPage()));
              },
              child: Container(
                // height: 110.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Colors.grey,
                  //       offset: Offset(1.0, 0.0),
                  //       blurRadius: 2.0)
                  // ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.network(
                              'https://cdn1.iconfinder.com/data/icons/phone-call-3/400/Calls-18-512.png',
                              //height: 120.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            "Contact Us",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CalendarPage()));
              },
              child: Container(
                // height: 110.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Colors.grey,
                  //       offset: Offset(1.0, 0.0),
                  //       blurRadius: 2.0)
                  // ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.network(
                              'https://static.vecteezy.com/system/resources/previews/002/208/100/original/calendar-rgb-color-icon-vector.jpg',
                              //height: 120.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            "Calendar",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget optionsBar(context, image1, image2) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContainerPage(
                              page: Notice(),
                              selected: 1,
                              title: "Notice",
                            )));
              },
              child: optionWidget("Notice", image1)),
        ),
        const SizedBox(
          height: 10,
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Resources()));
            },
            child: optionWidget("Resource", image2),
          ),
        )
      ],
    ),
  );
  // const SizedBox(height: 10.0),
  // Padding(
  //   padding: const EdgeInsets.symmetric(horizontal: 6),
  //   child: Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: [
  //       Expanded(
  //         child: GestureDetector(
  //           onTap: () {
  //             showAlertDialog(context);
  //             // Navigator.push(context,
  //             //     MaterialPageRoute(builder: (context) => RoutinePage()));
  //           },
  //           child: Container(
  //               decoration: BoxDecoration(
  //                 color: Colors.white,
  //                 boxShadow: const [
  //                   BoxShadow(
  //                     color: Colors.grey,
  //                     offset: Offset(0.0, 1.0), //(x,y)
  //                     blurRadius: 6.0,
  //                   ),
  //                 ],
  //                 borderRadius: BorderRadius.circular(10.0),
  //               ),
  //               height: 130.0,
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Expanded(
  //                     flex: 3,
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                         Expanded(
  //                           child: Padding(
  //                             padding: const EdgeInsets.symmetric(
  //                                 horizontal: 8.0, vertical: 2.0),
  //                             child: Image.network(
  //                               'https://icons-for-free.com/iconfiles/png/512/calendar-131964752454737242.png',
  //                               //height: 120.0,
  //                               fit: BoxFit.contain,
  //                             ),
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                   Expanded(
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: const [
  //                         Text(
  //                           "Routine",
  //                           style: TextStyle(
  //                               fontSize: 14.0, color: Colors.grey),
  //                         )
  //                       ],
  //                     ),
  //                   )
  //                 ],
  //               )),
  //         ),
  //       ),
  //       const SizedBox(
  //         height: 10,
  //         width: 15,
  //       ),
  //       Expanded(
  //         child: GestureDetector(
  //           onTap: () {
  //             Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                     builder: (context) => DiscussioPage()));
  //           },
  //           child: Container(
  //               decoration: BoxDecoration(
  //                 color: Colors.white,
  //                 boxShadow: const [
  //                   BoxShadow(
  //                     color: Colors.grey,
  //                     offset: Offset(0.0, 1.0), //(x,y)
  //                     blurRadius: 6.0,
  //                   ),
  //                 ],
  //                 borderRadius: BorderRadius.circular(10.0),
  //               ),
  //               height: 130.0,
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Expanded(
  //                     flex: 3,
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                         Expanded(
  //                           child: Padding(
  //                             padding: const EdgeInsets.symmetric(
  //                                 horizontal: 8.0, vertical: 2.0),
  //                             child: Image.network(
  //                               'https://cdn4.iconfinder.com/data/icons/got-an-idea/128/discussion-512.png',
  //                               //height: 120.0,
  //                               fit: BoxFit.contain,
  //                             ),
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                   Expanded(
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: const [
  //                         Text(
  //                           "Discussion",
  //                           style: TextStyle(
  //                               fontSize: 14.0, color: Colors.grey),
  //                         )
  //                       ],
  //                     ),
  //                   )
  //                 ],
  //               )),
  //         ),
  //       )
  //     ],
  //   ),
  // );
}

Widget optionWidget(title, imageUrl) {
  return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 2.0,
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 130.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2.0),
                    child: Image.network(imageUrl,
                        //height: 120.0,
                        fit: BoxFit.contain),
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(
          //   height: 30.0,
          // ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title.toString(),
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ));
}
