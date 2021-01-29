import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shopping/app_screens/home/components/sectiontitle.dart';

class Special extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SectionTitle(
            title: "Special for you",
            press: () {},
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              SpecialCard(
                  image: "assets/images/Image Banner 2.png",
                  category: "Smartphone",
                  noOfBrands: 18,
                  press: () {}),
              SpecialCard(
                  image: "assets/images/Image Banner 3.png",
                  category: "Fashion",
                  noOfBrands: 24,
                  press: () {}),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class SpecialCard extends StatelessWidget {
  const SpecialCard(
      {Key key,
      @required this.category,
      @required this.noOfBrands,
      @required this.image,
      @required this.press})
      : super(key: key);

  final String category, image;
  final int noOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 200,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.grey.withOpacity(0.4),
                        Colors.grey.withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  child: Text.rich(TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                            text: "$category \n",
                            style: TextStyle(
                                fontSize: 12.0, fontWeight: FontWeight.bold)),
                        TextSpan(text: "$noOfBrands Brands")
                      ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
