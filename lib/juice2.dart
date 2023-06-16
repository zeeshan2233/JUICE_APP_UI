import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:juice_app/Juice3.dart';

class JuiceTwo extends StatefulWidget {
  const JuiceTwo({super.key});

  @override
  State<JuiceTwo> createState() => _JuiceTwoState();
}

class _JuiceTwoState extends State<JuiceTwo> {
  @override
  Widget build(BuildContext context) {
    List images = [
      "assets/images/grapes.jpg",
      "assets/images/mixed.jpeg",
      "assets/images/oranges.jpeg",
      "assets/images/starw.jpeg",
      "assets/images/grapes.jpg",
    ];
    List textdata = ["Bnana", "phoneApple", "Grapes", "Orange", "sTABERY"];

    List<String> textss = ["juice", "banan", "Mango", "Stabnery", "Stabnery"];
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            "assets/images/berrie.jpg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.8),
            colorBlendMode: BlendMode.darken,
          )),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.sort,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Healthy OutSide start form Side",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              //
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 78.0, top: 20),
                child: Text(
                  "We provide verity of flavour with various  flavour",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //
              Text(
                "Our Some Varities",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              SizedBox(
                height: 30,
              ),

              //listview
              Container(
                height: 300,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => JuiceDetail( 
                                    background: images[index],
                                    title: textss[index],
                                    
                                  )));
                        },
                        child: Column(
                          children: [
                            Hero(
                              tag: images[index],
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                height: 200,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(images[index]),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Text(
                              textss[index],
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
