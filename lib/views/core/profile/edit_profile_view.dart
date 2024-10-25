import 'package:exploreease/views/constants/colors.dart';
import 'package:flutter/material.dart';

Widget editProfileView() {
  return Container(
    height: double.maxFinite*0.5,
    width: double.maxFinite,
    decoration: const BoxDecoration(
      color: appBackgroundColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25.0),
        topRight: Radius.circular(25.0),
      ),
    ),
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 20.0),
        Text(
          "Edit",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 22.0,
            color: text1Color,
          ),
        ),
        SizedBox(height: 30.0),
        Text("data"),
      ],
    ),
  );
}
