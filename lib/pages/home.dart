import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:kcmitapp/pages/notice.dart';
import 'package:kcmitapp/pages/resources.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
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
            )),
        Container(
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
                              Image.network(
                                'https://cdn.pngsumo.com/classroom-professor-teacher-teaching-tutor-icon-professor-teaching-png-512_512.png',
                                //height: 120.0,
                                fit: BoxFit.fill,
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
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
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
                              Image.network(
                                'https://cdn1.iconfinder.com/data/icons/phone-call-3/400/Calls-18-512.png',
                                //height: 120.0,
                                fit: BoxFit.fill,
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
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
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
                              Image.network(
                                'https://static.vecteezy.com/system/resources/previews/002/208/100/original/calendar-rgb-color-icon-vector.jpg',
                                //height: 120.0,
                                fit: BoxFit.fill,
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
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Notice()));
                  },
                  child: Container(
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
                                Image.network(
                                  'https://icons.iconarchive.com/icons/grafikartes/flat-retro-modern/512/messages-icon.png',
                                  //height: 120.0,
                                  fit: BoxFit.fill,
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
                              children: const [
                                Text(
                                  "Notice",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ),
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
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
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
                                Image.network(
                                  'http://zucmanlab.com/wp-content/uploads/2018/11/download-1915753_960_720.png',
                                  height: 120.0,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Resources",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
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
                              Image.network(
                                'https://icons-for-free.com/iconfiles/png/512/calendar-131964752454737242.png',
                                //height: 120.0,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Routine",
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.grey),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ),
              const SizedBox(
                height: 10,
                width: 15,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
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
                                Image.network(
                                  'https://cdn4.iconfinder.com/data/icons/got-an-idea/128/discussion-512.png',
                                  //height: 120.0,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Discussion",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
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
                                  height: 15.0,
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
