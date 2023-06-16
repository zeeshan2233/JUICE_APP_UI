import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:juice_app/juice2.dart';

class Juice_Home extends StatefulWidget {
  const Juice_Home({super.key});

  @override
  State<Juice_Home> createState() => _Juice_HomeState();
}

class _Juice_HomeState extends State<Juice_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            "assets/images/berries.jpg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.5),
            colorBlendMode: BlendMode.darken,
          )),

          //listview
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.sort,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Juicy",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //
              SizedBox(
                height: 30,
              ),

              Center(
                child: FaIcon(
                  FontAwesomeIcons.martiniGlassCitrus,
                  color: Colors.white,
                  size: 100,
                ),
              ),
              //
              SizedBox(
                height: 30,
              ),
              //
              Center(
                child: Text(
                  "Berry Juice",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Blend of Berry with ice that make your tried day feels very freash again",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              InkWell(
                onTap: () {
                  // Get.to(() => Juice_Home());
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JuiceTwo()));
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Explore More",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
