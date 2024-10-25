import 'package:exploreease/models/detail.dart';

class Place {
  final String image;
  final String title;
  final double rating;
  final String location;
  final String description;
  final List<Detail> details;
  final List<String> pictures;
  final bool isFavorite;

  const Place({
    required this.image,
    required this.title,
    required this.rating,
    required this.location,
    required this.description,
    required this.details,
    required this.pictures,
    required this.isFavorite,
  });
}