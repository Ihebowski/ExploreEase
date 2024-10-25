import 'package:exploreease/views/constants/colors.dart';
import 'package:flutter/material.dart';

class BestView extends StatelessWidget {
  const BestView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommendations",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:26.0,
                  color: text1Color,
                ),
              ),
              Text(
                "See More",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                  color: text1Color,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              Container(
                height: 225.0,
                width: 150.0,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
