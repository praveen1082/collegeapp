import 'package:flutter/material.dart';
import 'package:kcmitapp/ui/pages/gallerypages/galleryimagespage.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery"),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      blurRadius: 1.0,
                      offset: Offset(0.0, 1.0),
                      color: Colors.grey)
                ]),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GalleryImagePage()));
                  },
                  child: Container(
                    height: 200.0,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/photos/people-crowd-texture-background-bird-eye-view-toned-picture-id1179870100?k=20&m=1179870100&s=612x612&w=0&h=7ncUt-rcxxx_llFkWiZctC0y3E_22zO_cAatLkkpjMs='),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "College Futsal Tournament 2017 (Faculty & Students)",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 8.0, left: 8.0, bottom: 4.0),
                            child: Text(
                              "Source: College Football FB group",
                              style: TextStyle(fontSize: 12.0),
                            ),
                          )
                        ]),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
