import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  final title;
  final bodyPart;
  const ContainerPage({Key? key, this.title, this.bodyPart}) : super(key: key);

  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: Text(widget.title),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text("Praveen Panta"),
                accountEmail: Text("praveenpanta1082@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    "P",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: drawerlist.length,
                  itemBuilder: (context, index) {
                    return Container(
                      //height: double.infinity,
                      child: ListTile(
                        leading: Icon(icon[index]),
                        title: Text(drawerlist[index]),
                        onTap: () {
                          setState(() {
                            _selected++;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              const Divider(
                height: 10.0,
              ),
              const ListTile(
                leading: Icon(Icons.contact_page),
                title: Text("Contact us"),
              )
            ],
          ),
        ),
        body: _selected == 0 ? Text("Hello world") : Text("Unknown"),
      ),
    );
  }
}
