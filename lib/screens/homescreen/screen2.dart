import 'package:care_cove/screens/servicesscreen/cleaning.dart';
import 'package:care_cove/screens/servicesscreen/outsole.dart';
import 'package:care_cove/screens/servicesscreen/velcro.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 170, 0),
            child: Text("Services", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color:Color.fromARGB(255, 9, 52, 74) ),),
          ),
          SizedBox(height: 40,),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CleaningForm()));
              },
              child: Container(
                width: 270,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 209, 209),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Cleaning",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 9, 52, 74) ),
                    ),
                    SizedBox(width: 50),
                    Text("P1000")
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => OutsoleForm()));
              },
              child: Container(
                width: 270,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 209, 209),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Outsole",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 9, 52, 74) ),
                    ),
                    SizedBox(width: 50),
                    Text("P3000")
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => VelcroForm()));
              },
              child: Container(
                width: 270,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 209, 209),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Velcro",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 9, 52, 74) ),
                    ),
                    SizedBox(width: 50),
                    Text("P3000")
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}