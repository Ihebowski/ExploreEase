import 'package:exploreease/views/constants/colors.dart';
import 'package:exploreease/views/core/shared/rating_view.dart';
import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  final String username;
  final String comment;
  final double rate;
  const CommentCard({super.key, required this.username, required this.comment, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: appBackgroundColor,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: primaryColor,
        ),
      ),
      padding: const EdgeInsets.symmetric(
          horizontal: 20.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "@$username",
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  color: text1Color,
                ),
              ),
              RatingView(rating: rate),
            ],
          ),
          const SizedBox(height: 10.0),
          Text(
            comment,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
              color: text1Color,
            ),
          ),
        ],
      ),
    );
  }
}
