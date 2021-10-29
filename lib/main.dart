import 'package:flutter/material.dart';
import 'package:kcmitapp/UI/pages/containerpage.dart';
import 'package:kcmitapp/UI/pages/home.dart';

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