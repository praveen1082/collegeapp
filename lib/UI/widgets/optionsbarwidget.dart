import 'package:flutter/material.dart';
import 'package:kcmitapp/UI/pages/discussion.dart';
import 'package:kcmitapp/UI/pages/notice.dart';
import 'package:kcmitapp/UI/pages/resources.dart';
import 'package:kcmitapp/UI/pages/routine.dart';
import 'package:kcmitapp/UI/widgets/optionwidget.dart';

class OptionsBarWidget extends StatelessWidget {
  const OptionsBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              OptionWidget(
                imageUrl:
                    'https://icons.iconarchive.com/icons/grafikartes/flat-retro-modern/512/messages-icon.png',
                page: Notice(),
                title: "Notice",
                drawerselected: 1,
              ),
              SizedBox(
                width: 10,
              ),
              OptionWidget(
                imageUrl:
                    'http://zucmanlab.com/wp-content/uploads/2018/11/download-1915753_960_720.png',
                page: Resources(),
                title: "Resource",
                drawerselected: 2,
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              OptionWidget(
                imageUrl:
                    'https://icons-for-free.com/iconfiles/png/512/calendar-131964752454737242.png',
                page: RoutinePage(),
                title: "Routine",
                drawerselected: 8,
              ),
              SizedBox(
                width: 10,
              ),
              OptionWidget(
                imageUrl:
                    'https://cdn4.iconfinder.com/data/icons/got-an-idea/128/discussion-512.png',
                page: DiscussioPage(),
                title: "Discussion Forum",
                drawerselected: 9,
              )
            ],
          ),
        ),
      ],
    );
  }
}
