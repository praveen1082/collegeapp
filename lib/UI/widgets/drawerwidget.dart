import 'package:flutter/material.dart';
import 'package:kcmitapp/UI/pages/attendancepage.dart';
import 'package:kcmitapp/UI/pages/containerpage.dart';
import 'package:kcmitapp/UI/pages/gallerypage.dart';
import 'package:kcmitapp/UI/pages/home.dart';
import 'package:kcmitapp/UI/pages/notice.dart';
import 'package:kcmitapp/UI/pages/resources.dart';
import 'package:kcmitapp/UI/pages/resultpage.dart';
import 'package:kcmitapp/UI/pages/routine.dart';

class DrawerWidget extends StatefulWidget {
  final select;

  const DrawerWidget({Key? key, this.select}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        //shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          userWidget(),
          drawerMenu(widget.select),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Communicate",
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.contact_page),
            title: Text("Contact us"),
          )
        ],
      ),
    );
  }
}

Widget userWidget() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      image: DecorationImage(
          colorFilter:
              ColorFilter.mode(Colors.grey.withOpacity(0.1), BlendMode.dstATop),
          fit: BoxFit.fill,
          image: NetworkImage(
              'https://www.educatenepal.com/InstitutionLinks/Multimedia/1304503147kcmit_p1.jpg')),
    ),
    padding: EdgeInsets.all(20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://merotutor.com/sites/default/files/styles/large/public/received_1735341753203769.jpeg?itok=cREaR24m'),
              maxRadius: 50.0,
              minRadius: 10.0,
              //minRadius: 75.0,
              backgroundColor: Colors.white,
            )
          ],
        ),
        //SizedBox(height: 15.0),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Praveen Panta",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Expanded(
              child: Text(
                "Praveenpanta1082@gmail.com",
                style: TextStyle(fontSize: 16.0),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Text("BIM2017"),
            )
          ],
        ),
      ],
    ),
  );
}

Widget drawerMenu(int select) {
  dynamic _selected = select;
  List<String> drawerlist = [
    "Home",
    "Notice",
    "Resource",
    "Attendance",
    "Academic Calendar",
    "Gallery",
    "Blog",
    "Faculty",
    "Routine",
    "Discussion",
    "Result",
    "About",
    "Logout"
  ];
  List icon = [
    Icons.home,
    Icons.new_releases_outlined,
    Icons.home,
    Icons.account_balance_rounded,
    Icons.ac_unit,
    Icons.home,
    Icons.new_releases_outlined,
    Icons.home,
    Icons.account_balance_rounded,
    Icons.ac_unit,
    Icons.access_alarm_rounded,
    Icons.accessibility_new_sharp,
    Icons.contact_mail,
  ];
  return StatefulBuilder(builder: (context, setState) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: drawerlist.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Container(
            padding: EdgeInsets.all(5.0),
            color: _selected == index ? Colors.grey[200] : Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    icon[index],
                    size: 35,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(child: Text(drawerlist[index])),
                ],
              ),
            ),
          ),
          onTap: () {
            if (index == 0 && _selected != 0) {
              //Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ContainerPage(
                            title: drawerlist[index],
                            page: Home(),
                            selected: index,
                          )));
            } else if (index == 1 && _selected != 1) {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ContainerPage(
                            title: drawerlist[index],
                            page: Notice(),
                            selected: index,
                            //drawerorscreen: false,
                          )));
            } else if (index == 2 && _selected != 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Resources()));
            } else if (index == 10 && _selected != 10) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage()));
            } else if (index == 3 && _selected != 3) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AttendancePage()));
            } else if (index == 5 && _selected != 5) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GalleryPage()));
            } else if (index == 8 && _selected != 8) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RoutinePage()));
            }
            setState(() {
              _selected = index;
            });
          },
        );
      },
    );
  });
}
