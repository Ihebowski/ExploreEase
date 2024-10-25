import 'package:exploreease/views/constants/colors.dart';
import 'package:flutter/material.dart';

class AddCommentCard extends StatelessWidget {
  const AddCommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: appBackgroundColor,
      surfaceTintColor: Colors.transparent,
      title: const Text(
        "Do you have a comment?",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18.0,
          color: text1Color,
        ),
      ),
      content: SizedBox(
        height: 275.0,
        width: double.maxFinite,
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
                keyboardType: TextInputType.number,
                cursorColor: primaryColor,
                cursorHeight: 20.0,
                decoration: InputDecoration(
                  labelText: "Rate",
                  labelStyle: const TextStyle(
                    color: text2Color,
                    fontSize: 16.0,
                  ),
                  floatingLabelStyle: const TextStyle(
                    color: primaryColor,
                    fontSize: 18.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: primaryColor),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Container(
            height: 200.0,
            decoration: BoxDecoration(
                color: itemBackgroundColor,
                borderRadius: BorderRadius.circular(10.0)),
            child: Center(
              child: TextField(
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.start,
                cursorColor: primaryColor,
                cursorHeight: 20.0,
                keyboardType: TextInputType.multiline,
                expands: true,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: "Comment",
                  labelStyle: const TextStyle(
                    color: text2Color,
                    fontSize: 16.0,
                  ),
                  floatingLabelStyle: const TextStyle(
                    color: primaryColor,
                    fontSize: 18.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: primaryColor),
                  ),
                ),
              ),
            ),
          ),
        ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        SizedBox(
          height: 40.0,
          width: 125.0,
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
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
            child: const Text(
              "Cancel",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14.0,
                color: text1Color,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40.0,
          width: 125.0,
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
              "Send",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14.0,
                color: text3Color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
