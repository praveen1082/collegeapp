import 'package:flutter/material.dart';
import 'package:kcmitapp/ui/pages/containerpage.dart';
import 'package:kcmitapp/ui/pages/home.dart';

void main() {
  runApp(KcmitApp());
}

class KcmitApp extends StatelessWidget {
  const KcmitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainerPage(
        title: "Home",
        page: Home(),
        selected: 0,
      ),
    );
  }
}
// ThemeData(
//         colorScheme: ColorScheme.fromSwatch(
//           primarySwatch: Colors.blue,
//         ).copyWith(
//           secondary: Colors.green,
//         ),
//       ),