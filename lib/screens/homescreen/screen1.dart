import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final List<String> imgList = [
    'assets/shoe1.png',
    'assets/shoe2.png',
    'assets/shoe3.png',
    'assets/shoe4.png',
    'assets/shoe5.png'
  ];

  final List<String> labels = [
    'Nike Air Force 1',
    'Nike Air Force 1 Shadow',
    'Nike Air Force 1 Retro',
    'Nike Air Force 1 GTX',
    'Nike Air Force 1 Orange'
  ];

  final List<String> prices = [
    'P3999.99',
    'P2999.99',
    'P4000.99',
    'P6000.99',
    'P10000.99'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 35, 0),
                child: Text("Newly Arrived Collection", style: TextStyle(color: Color.fromARGB(255, 9, 52, 74), fontSize: 25,
                fontWeight: FontWeight.bold),),
              ),
            ),
            Center(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 500.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 8,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
                items: imgList.asMap().entries.map((entry) {
                  int index = entry.key;
                  String item = entry.value;
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              child: Stack(
                                children: <Widget>[
                                  Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                                  Positioned(
                                    bottom: 5.0,
                                    left: 0.0,
                                    right: 0.0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 20.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            labels[index],
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Price: ${prices[index]}',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16.0,
                                            ),
                                          ),
        
                                          
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 110, 0),
              child: Text("Kick Fix Services",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color.fromARGB(255, 9, 52, 74)
                              ),),
            ),
            SizedBox(height: 20,),
            Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black)
               ),
               child: Center(
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Cleaning",
                     style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 9, 52, 74)
                     ),),
                     SizedBox(width: 30,),
                     Text("P1000 per pair")
                   ],
                 ),
               ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black)
               ),
               child: Center(
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Outsole",
                     style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 9, 52, 74)
                     ),),
                     SizedBox(width: 30,),
                     Text("P3000 per pair")
                   ],
                 ),
               ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black)
               ),
               child: Center(
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Velcro",
                     style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 9, 52, 74)
                     ),),
                     SizedBox(width: 30,),
                     Text("P3000 per pair"),
                   ],
                 ),
               ),
            ),
           SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}