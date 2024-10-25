import 'package:exploreease/services/bookmark_service.dart';
import 'package:exploreease/views/constants/colors.dart';
import 'package:exploreease/views/core/bookmark/bookmark_card.dart';
import 'package:flutter/material.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              backgroundColor: appBackgroundColor,
              surfaceTintColor: Colors.transparent,
              automaticallyImplyLeading: false,
              centerTitle: true,
              floating: true,
              title: Text(
                "Bookmark",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 22.0,
                  color: text1Color,
                ),
              ),
            ),
            SliverList.builder(
              itemCount: bookmarkList.length,
              itemBuilder: (context, index) =>
                  BookmarkCard(place: bookmarkList[index]),
            ),
          ],
        ),
      ),
    );
  }
}
