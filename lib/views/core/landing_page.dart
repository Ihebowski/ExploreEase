import 'package:exploreease/views/constants/colors.dart';
import 'package:exploreease/views/core/bookmark/bookmark_page.dart';
import 'package:exploreease/views/core/home/home_page.dart';
import 'package:exploreease/views/core/profile/profile_page.dart';
import 'package:exploreease/views/core/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  var bottomNavIndex = 0;
  final pageList = <Widget>[
    const HomePage(),
    const SearchPage(),
    const BookmarkPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: pageList[bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            bottomNavIndex = value;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: primaryColor,
        unselectedItemColor: secondaryColor,
        backgroundColor: appBackgroundColor,
        iconSize: 24.0,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(FluentIcons.home_32_regular),
            activeIcon: Icon(FluentIcons.home_32_filled),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(FluentIcons.search_32_regular),
            activeIcon: Icon(FluentIcons.search_32_filled),
          ),
          BottomNavigationBarItem(
            label: "Bookmark",
            icon: Icon(FluentIcons.bookmark_32_regular),
            activeIcon: Icon(FluentIcons.bookmark_32_filled),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(FluentIcons.person_32_regular),
            activeIcon: Icon(FluentIcons.person_32_filled),
          ),
        ],
      ),
    );
  }
}