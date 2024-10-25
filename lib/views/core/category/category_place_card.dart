import 'package:exploreease/models/place.dart';
import 'package:exploreease/views/constants/colors.dart';
import 'package:exploreease/views/core/place/place_page.dart';
import 'package:flutter/material.dart';

class CategoryPlaceCard extends StatelessWidget {
  final Place place;
  const CategoryPlaceCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlacePage(place: place),
          ),
        );
      },
      child: SizedBox(
        height: 125.0,
        width: 125.0,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  place.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100.0,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 15.0,
              left: 15.0,
              right: 15.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 2.5),
                child: Text(
                  place.title,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: text3Color,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
