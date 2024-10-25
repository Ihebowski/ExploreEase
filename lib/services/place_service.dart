import 'package:exploreease/models/detail.dart';
import 'package:exploreease/models/place.dart';

final placeList = <Place>[
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
  Place(
    title: "Roman town Dougga",
    image: "assets/images/2/0.jpg",
    rating: 2.2,
    description: "Before the Roman annexation of Numidia, the town of Thugga, built on an elevated site overlooking a fertile plain, was the capital of an important Libyco-Punic state. It flourished under Roman and Byzantine rule, but declined in the Islamic period. The impressive ruins that are visible today give some idea of the resources of a small Roman town on the fringes of the empire.",
    location: "Beja, Tunisia",
    details: [
      Detail(
        title: "Parking",
        icon: "assets/icons/details/parking.png",
      ),
      Detail(
        title: "Road",
        icon: "assets/icons/details/road.png",
      ),
      // Detail(
      //   title: "Network",
      //   icon: "assets/icons/details/network.png",
      // ),
    ],
    pictures: [
      "assets/images/2/1.jpg",
      "assets/images/2/2.jpg",
      "assets/images/2/3.jpg",
      "assets/images/2/4.jpg",
      "assets/images/2/5.jpg",
    ],
    isFavorite: false,
  ),
];