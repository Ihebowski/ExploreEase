import 'package:exploreease/views/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class PictureViewer extends StatelessWidget {
  final String image;

  const PictureViewer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: appBackgroundColor,
            surfaceTintColor: Colors.transparent,
            expandedHeight: 50.0,
            floating: true,
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
            child: SizedBox(
              height: ((MediaQuery.of(context).size.height) -
                  (MediaQuery.of(context).size.height * 0.2)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    image,
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
