import 'package:flutter/material.dart';
import 'package:kcmitapp/UI/pages/attendancepage.dart';
import 'package:kcmitapp/UI/pages/gallerypage.dart';
import 'package:kcmitapp/UI/pages/resultpage.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
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
  dynamic _selected = 0;
  @override
  void initState() {
    // TODO: implement initState
    _selected = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        //shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.grey.withOpacity(0.1), BlendMode.dstATop),
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
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
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
          ),
          // const UserAccountsDrawerHeader(
          //   accountName: Text("Praveen Panta"),
          //   accountEmail: Text("praveenpanta1082@gmail.com"),
          //   currentAccountPicture: CircleAvatar(
          //     backgroundColor: Colors.orange,
          //     child: Text(
          //       "P",
          //       style: TextStyle(fontSize: 40.0),
          //     ),
          //   ),
          // ),
          ListView.builder(
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
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(child: Text(drawerlist[index])),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  if (index == 10) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ResultPage()));
                  } else if (index == 3) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AttendancePage()));
                  } else if (index == 5) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GalleryPage()));
                  }
                  setState(() {
                    _selected = index;
                  });
                },
              );
              // return ListTile(
              //   leading: Icon(icon[index]),
              //   title: Text(drawerlist[index]),
              //   onTap: () {
              //     if (index == 10) {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => ResultPage()));
              //     } else if (index == 3) {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => AttendancePage()));
              //     } else if (index == 5) {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => GalleryPage()));
              //     }
              //     setState(() {
              //       _selected = index;
              //     });
              //   },
              // );
            },
          ),
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
