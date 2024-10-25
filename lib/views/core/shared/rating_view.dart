import 'package:exploreease/views/constants/colors.dart';
import 'package:exploreease/views/core/shared/rating_counter.dart';
import 'package:flutter/material.dart';

class RatingView extends StatelessWidget {
  final double rating;
  const RatingView({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RatingCounter(rating: rating),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          rating.toString(),
          style: const TextStyle(
            color: text4Color,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
