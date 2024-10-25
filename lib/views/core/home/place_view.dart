import 'package:exploreease/services/place_service.dart';
import 'package:exploreease/views/constants/colors.dart';
import 'package:exploreease/views/core/home/place_card.dart';
import 'package:flutter/material.dart';

class PlaceView extends StatefulWidget {
  const PlaceView({super.key});

  @override
  State<PlaceView> createState() => _PlaceViewState();
}

class _PlaceViewState extends State<PlaceView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    return SizedBox(
      height: 320.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discover",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
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
          Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: tabController,
              splashFactory: NoSplash.splashFactory,
              splashBorderRadius: BorderRadius.circular(25.0),
              labelColor: primaryColor,
              unselectedLabelColor: secondaryColor,
              isScrollable: true,
              dividerColor: Colors.transparent,
              tabAlignment: TabAlignment.start,
              indicatorColor: primaryColor,
              labelStyle: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
              tabs: const [
                Tab(text: "Popular"),
                Tab(text: "Most Visited"),
                Tab(text: "Featured"),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.separated(
                  separatorBuilder: (context, _) =>
                      const SizedBox(width: 10.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: placeList.length,
                  itemBuilder: (context, index) => Center(
                    child: PlaceCard(place: placeList[index]),
                  ),
                ),
                Container(),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
