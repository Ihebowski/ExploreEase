import 'package:exploreease/services/search_service.dart';
import 'package:exploreease/views/constants/colors.dart';
import 'package:exploreease/views/core/search/search_place_card.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
              title: const Text(
                "Search",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 22.0,
                  color: text1Color,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(100.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 60.0,
                        decoration: BoxDecoration(
                            color: itemBackgroundColor,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            cursorColor: primaryColor,
                            cursorHeight: 20.0,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                              ),
                              suffixIcon: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: appBackgroundColor,
                                    borderRadius: BorderRadius.circular(5.0),
                                    // shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      FluentIcons.search_32_regular,
                                      size: 32.0,
                                      color: primaryColor,
                                    ),
                                    splashColor: primaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                    ],
                  ),
                ),
              ),
            ),
            SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1,
                crossAxisCount: 3,
                crossAxisSpacing: 7.5,
                mainAxisSpacing: 7.5,
              ),
              itemCount: searchList.length,
              itemBuilder: (context, index) =>
                  SearchPlaceCard(place: searchList[index]),
            ),
          ],
        ),
      ),
    );
  }
}
