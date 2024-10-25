import 'package:exploreease/views/constants/colors.dart';
import 'package:exploreease/views/core/home/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            backgroundColor: appBackgroundColor,
            surfaceTintColor: Colors.transparent,
            automaticallyImplyLeading: false,
            floating: true,
            centerTitle: true,
            title: const Text(
              "Notification",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 32.0,
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
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Column(
                children: [
                  NotificationCard(
                    admin: "Ihebowski",
                    isAccepted: true,
                    message: "",
                  ),
                  SizedBox(height: 10.0),
                  NotificationCard(
                    admin: "Azyz",
                    isAccepted: false,
                    message: "The place you have added already exists.",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
