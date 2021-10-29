import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery"),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 1.0, offset: Offset(0.0, 1.0), color: Colors.grey)
          ]),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello World"),
                Text("Hello world from praveen")
              ]),
        );
      }),
    );
  }
}
