

import 'package:exploreease/models/detail.dart';
import 'package:exploreease/models/place.dart';

final bookmarkList = <Place>[
  Place(
    title: "Adventure Quad Douz",
    image: "assets/images/1/0.jpg",
    rating: 4.5,
    description: "Douz is a town in the Kebili Governorate in the south of Tunisia, known as the 'gateway to the Sahara.' By road it is located 31 kilometres southwest of Blidet, 125 kilometres southeast of Tozeur, and 475 kilometres south of the Tunisian capital of Tunis.",
    location: "Douz, Tunisia",
    details: [
      Detail(
        title: "Parking",
        icon: "assets/icons/details/parking.png",
      ),
      Detail(
        title: "Road",
        icon: "assets/icons/details/road.png",
      ),
      Detail(
        title: "Network",
        icon: "assets/icons/details/network.png",
      ),
    ],
    pictures: [
      "assets/images/1/1.jpg",
      "assets/images/1/2.jpg",
      "assets/images/1/3.jpg",
      "assets/images/1/4.jpg",
    ],
    isFavorite: true,
  ),
];