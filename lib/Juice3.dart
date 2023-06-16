import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class JuiceDetail extends StatefulWidget {
  String background;
  String title;

  JuiceDetail({super.key, required this.title, required this.background});

  @override
  State<JuiceDetail> createState() => _JuiceDetailState();
}

class _JuiceDetailState extends State<JuiceDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Hero(
              tag: widget.background,
              child: Image.asset(
                widget.background,
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.75),
                colorBlendMode: BlendMode.darken,
              ),
            ),
          ),
          //
          ListView(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.local_fire_department,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(widget.background), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Strabery Juice",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Mixed with child ice and grained with sponita with with softgand sunshine with morning",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    )),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
