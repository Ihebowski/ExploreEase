import 'package:exploreease/services/myplace_service.dart';
import 'package:exploreease/views/constants/colors.dart';
import 'package:exploreease/views/core/profile/myplace_card.dart';
import 'package:flutter/material.dart';

Widget myPlaceProfileView() {
  return Container(
    height: double.maxFinite*0.8,
    width: double.maxFinite,
    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
    decoration: const BoxDecoration(
      color: appBackgroundColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25.0),
        topRight: Radius.circular(25.0),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 20.0),
        const Text(
          "My Places",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 22.0,
            color: text1Color,
          ),
        ),
        const SizedBox(height: 30.0),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1,
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: myPlaceList.length,
            itemBuilder: (context, index) =>
                MyPlaceCard(place: myPlaceList[index]),
          ),
        ),
      ],
    ),
  );
}
