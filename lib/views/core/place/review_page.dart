import 'package:exploreease/views/constants/colors.dart';
import 'package:exploreease/views/core/place/add_comment_card.dart';
import 'package:exploreease/views/core/place/comment_card.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

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
              "2 Reviews",
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
              padding:
                  EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommentCard(
                    username: "Ihebowski",
                    comment:
                        "Certainly! To provide a comment about a place, I'll need some details about the specific place you have in mind. Please share a bit more information or describe the place, and I'll be happy to help you craft a comment.",
                    rate: 4.0,
                  ),
                  SizedBox(height: 10.0),
                  CommentCard(
                    username: "Bella",
                    comment:
                        "Absolutely, I'd be happy to help! However, I still need information about the specific place you're referring to. Please provide details or describe the place you have in mind, and I can assist you in creating a comment.",
                    rate: 5.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AddCommentCard();
              },
          );
        },
        elevation: 0.0,
        backgroundColor: primaryColor,
        child: const Icon(
          FluentIcons.comment_add_48_filled,
          color: text3Color,
          size: 28.0,
        ),
      ),
    );
  }
}
