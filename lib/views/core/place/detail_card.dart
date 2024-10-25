import 'package:exploreease/views/constants/colors.dart';
import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  final String title;
  final String path;

  const DetailCard({super.key, required this.title, required this.path});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: Column(
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              color: itemBackgroundColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.5),
              child: Image.asset(
                path,
                color: text1Color,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: text1Color,
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
