import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:kcmitapp/UI/pages/calendarpage.dart';
import 'package:kcmitapp/UI/pages/contactpage.dart';
import 'package:kcmitapp/UI/pages/facultypage.dart';
import 'package:kcmitapp/UI/pages/routine.dart';
import 'package:kcmitapp/UI/widgets/homefooterwidget.dart';
import 'package:kcmitapp/UI/widgets/optionsbarwidget.dart';

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
        OptionsBarWidget(),
        const SizedBox(
          height: 15,
        ),
        HomeFooterWidget(),
        const SizedBox(
          height: 2.0,
        ),
      ],
    );
  }
}

Widget imageSlider() {
  return Container(
      height: 250.0,
      width: double.infinity,
      child: ImageSlideshow(
          autoPlayInterval: 3000,
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
