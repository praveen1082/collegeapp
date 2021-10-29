import 'package:flutter/material.dart';

class GalleryImageDisplayPage extends StatelessWidget {
  const GalleryImageDisplayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 40.0,
              color: Colors.blue,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //height: 50.0,
                  //padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          //fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://media.istockphoto.com/photos/people-crowd-texture-background-bird-eye-view-toned-picture-id1179870100?k=20&m=1179870100&s=612x612&w=0&h=7ncUt-rcxxx_llFkWiZctC0y3E_22zO_cAatLkkpjMs='))),
                ),
              ),
            ),
            Container(
              height: 40.0,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
