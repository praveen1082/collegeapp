import 'package:flutter/material.dart';
import 'package:kcmitapp/pages/containerpage.dart';

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
          title: "KCMITians", bodyPart: Text("Hello world from praveen panta")),
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