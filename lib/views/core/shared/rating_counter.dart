import 'package:exploreease/views/constants/colors.dart';
import 'package:flutter/material.dart';

class RatingCounter extends StatelessWidget {
  final double rating;
  const RatingCounter({super.key, required this.rating,});

  @override
  Widget build(BuildContext context) {
    List<Widget> starList = <Icon>[];

    int realNumber = rating.floor();
    // int partNumber = ((rating - realNumber) * 10).ceil();

    for (int i=0; i<5; i++){
      if (i < realNumber){
        starList.add(
          const Icon(
            Icons.star_rate_rounded,
            color: text4Color,
            size: 22.0,
          ),
        );
      } else if ( i == realNumber){
        starList.add(
          const Icon(
            Icons.star_half_rounded,
            color: text4Color,
            size: 22.0,
          ),
        );
      } else {
        starList.add(
          const Icon(
            Icons.star_border_rounded,
            color: text4Color,
            size: 22.0,
          ),
        );
      }
    }
    return SizedBox(
      height: 25.0,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: starList,
      ),
    );
  }
}
