import 'package:exploreease/services/place_service.dart';
import 'package:exploreease/views/constants/colors.dart';
import 'package:exploreease/views/core/category/category_place_card.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class CategoryPage extends StatelessWidget {
  final String title;

  const CategoryPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: appBackgroundColor,
              surfaceTintColor: Colors.transparent,
              automaticallyImplyLeading: false,
              centerTitle: true,
              pinned: true,
              title: Text(
                title,
                style: const TextStyle(
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
            ),
            SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1,
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              itemCount: placeList.length,
              itemBuilder: (context, index) =>
                  CategoryPlaceCard(place: placeList[index]),
            ),
          ],
        ),
      ),
    );
  }
}
