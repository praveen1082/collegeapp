import 'package:flutter/material.dart';
import 'package:kcmitapp/ui/pages/gallerypages/galleryimagedisplaypage.dart';

class GalleryImagePage extends StatelessWidget {
  const GalleryImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        title: Text("Hello world"),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 150.0,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 1.0,
              // ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GalleryImageDisplayPage()));
                    },
                    child: Container(
                      height: 150.0,
                      color: Colors.blue,
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
