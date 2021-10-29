// import 'package:flutter/material.dart';

// class AppBarWidget extends StatefulWidget implements PreferredSize {
//   final AppBar appBar;
//   final title;
//   const AppBarWidget({Key? key, this.title, this.appBar}) : super(key: key);

//   @override
//   _AppBarWidgetState createState() => _AppBarWidgetState();
// }

// class _AppBarWidgetState extends State<AppBarWidget> {
//   List _options = ["Share App", "Rate Us", "Disclaimer"];
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       actions: [
//         PopupMenuButton(
//           itemBuilder: (BuildContext bc) {
//             return _options
//                 .map((options) => PopupMenuItem(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(options),
//                       ),
//                       value: options,
//                     ))
//                 .toList();
//           },
//           onSelected: (value) {
//             setState(() {});
//           },
//         ),
//       ],
//       elevation: 0,
//       backgroundColor: Colors.blue[900],
//       titleSpacing: 10.0,
//       title: Text(widget.title),
//     );
//   }

//   @override
//   Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
// }
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  //final Color backgroundColor = Colors.red;
  final title;
  final appBar;

  const BaseAppBar({Key? key, this.title, this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _options = ["Share App", "Rate Us", "Disclaimer"];

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.blue[900],
      titleSpacing: 10.0,
      title: Text(title),
      actions: [
        PopupMenuButton(
          itemBuilder: (BuildContext bc) {
            return _options
                .map((options) => PopupMenuItem(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(options),
                      ),
                      value: options,
                    ))
                .toList();
          },
          onSelected: (value) {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
