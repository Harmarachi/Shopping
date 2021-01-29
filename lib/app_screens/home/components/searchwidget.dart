import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping/app_screens/home/components/searchfield.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SearchField(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xFF979797).withOpacity(0.1),
            ),
            child: IconButton(
                icon: SvgPicture.asset("assets/icons/Cart Icon.svg"),
                onPressed: () {}),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xFF979797).withOpacity(0.1),
            ),
            child: IconButton(
                icon: SvgPicture.asset("assets/icons/Bell.svg"),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
