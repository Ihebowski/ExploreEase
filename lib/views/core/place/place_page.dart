import 'package:exploreease/models/place.dart';
import 'package:exploreease/views/constants/colors.dart';
import 'package:exploreease/views/core/place/detail_card.dart';
import 'package:exploreease/views/core/place/picture_viewer.dart';
import 'package:exploreease/views/core/place/review_page.dart';
import 'package:exploreease/views/core/shared/rating_view.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class PlacePage extends StatelessWidget {
  final Place place;

  const PlacePage({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: appBackgroundColor,
            surfaceTintColor: Colors.transparent,
            automaticallyImplyLeading: false,
            floating: true,
            centerTitle: true,
            title: const Text(
              "Discover",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 22.0,
                color: text1Color,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                FluentIcons.arrow_left_32_regular,
                color: text1Color,
                size: 28.0,
              ),
            ),
            actions: [
              PopupMenuButton(
                color: appBackgroundColor,
                surfaceTintColor: Colors.transparent,
                icon: const Icon(
                  FluentIcons.more_vertical_32_regular,
                  color: text1Color,
                  size: 28.0,
                ),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    child: Text(
                      "Report",
                      style: TextStyle(
                        color: text1Color,
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 275,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.asset(
                          place.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            place.title,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0,
                              color: text1Color,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                FluentIcons.location_24_filled,
                                size: 18.0,
                                color: text2Color,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                place.location,
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  color: text2Color,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          RatingView(rating: place.rating),
                          const SizedBox(
                            height: 7.5,
                          ),
                          const Divider(
                            color: Colors.black12,
                          ),
                          const SizedBox(
                            height: 7.5,
                          ),
                          const Text(
                            "About",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26.0,
                              color: text1Color,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            place.description,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: text2Color,
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Text(
                            "Details",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26.0,
                              color: text1Color,
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          SizedBox(
                            height: 100.0,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(width: 10.0),
                              itemCount: place.details.length,
                              itemBuilder: (context, index) => DetailCard(
                                title: place.details[index].title,
                                path: place.details[index].icon,
                              ),
                            ),
                          ),
                          const Text(
                            "Pictures",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26.0,
                              color: text1Color,
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          SizedBox(
                            height: 175.0,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(width: 10.0),
                              itemCount: place.pictures.length,
                              itemBuilder: (context, index) {
                                return SizedBox(
                                  height: 175,
                                  width: 115,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => PictureViewer(
                                                image: place.pictures[index]),
                                          ),
                                        );
                                      },
                                      child: Image.asset(
                                        place.pictures[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 25.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 60.0,
                                width: MediaQuery.of(context).size.width*0.60,
                                child: TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    elevation:
                                    const MaterialStatePropertyAll<double>(0.0),
                                    backgroundColor:
                                    const MaterialStatePropertyAll<Color>(
                                        primaryColor),
                                  ),
                                  child: const Text(
                                    "Navigate To Maps",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.0,
                                      color: text3Color,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 60.0,
                                width: 60.0,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const ReviewPage(),
                                      ),
                                    );
                                  },
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    elevation:
                                    const MaterialStatePropertyAll<double>(0.0),
                                    backgroundColor:
                                    const MaterialStatePropertyAll<Color>(
                                        itemBackgroundColor),
                                  ),
                                  child: const Icon(
                                    FluentIcons.comment_48_regular,
                                    color: primaryColor,
                                    size: 28.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 60.0,
                                width: 60.0,
                                child: TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    elevation:
                                    const MaterialStatePropertyAll<double>(0.0),
                                    backgroundColor:
                                    const MaterialStatePropertyAll<Color>(
                                        itemBackgroundColor),
                                  ),
                                  child: const Icon(
                                    FluentIcons.share_48_regular,
                                    color: primaryColor,
                                    size: 28.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                  ],
                ),
                Positioned(
                  right: 20,
                  top: 250,
                  child: IconButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            itemBackgroundColor),
                        minimumSize: MaterialStateProperty.all<Size>(
                            const Size(50.0, 50.0))),
                    icon: Icon(
                      place.isFavorite
                          ? FluentIcons.bookmark_32_filled
                          : FluentIcons.bookmark_32_regular,
                      color: primaryColor,
                      size: 28.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
