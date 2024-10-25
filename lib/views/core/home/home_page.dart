import 'package:exploreease/views/constants/colors.dart';
import 'package:exploreease/views/core/home/add_place_page.dart';
import 'package:exploreease/views/core/home/best_view.dart';
import 'package:exploreease/views/core/home/categories_view.dart';
import 'package:exploreease/views/core/home/notification_page.dart';
import 'package:exploreease/views/core/home/place_view.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            pinned: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(25.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundColor: itemBackgroundColor,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Welcome,",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  "Iheb Barrah",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const AddPlacePage()),
                                );
                              },
                              style: ButtonStyle(
                                // backgroundColor: MaterialStateProperty.all<Color>(itemBackgroundColor),
                                minimumSize: MaterialStateProperty.all<Size>(const Size(50.0, 50.0)),
                              ),
                              icon: const Icon(
                                FluentIcons.add_circle_32_filled,
                                size: 28.0,
                                color: primaryColor,
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            IconButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const NotificationPage()),
                                );
                              },
                              style: ButtonStyle(
                                // backgroundColor: MaterialStateProperty.all<Color>(itemBackgroundColor),
                                minimumSize: MaterialStateProperty.all<Size>(const Size(50.0, 50.0)),
                              ),
                              icon: const Icon(
                                FluentIcons.alert_32_filled,
                                size: 28.0,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PlaceView(),
                  SizedBox(height: 10.0),
                  CategoriesView(),
                  SizedBox(height: 10.0),
                  BestView(),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
