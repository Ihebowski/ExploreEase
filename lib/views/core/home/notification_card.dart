import 'package:exploreease/views/constants/colors.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String admin;
  final bool isAccepted;
  final String message;

  const NotificationCard(
      {super.key,
      required this.admin,
      required this.isAccepted,
      required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: itemBackgroundColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
          style: const TextStyle(
            color: text1Color,
            fontSize: 16.0,
          ),
          children: [
            const TextSpan(
              text: "Admin",
            ),
            TextSpan(
              text: " @$admin ",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            isAccepted
                ? const TextSpan(
                    text: "has accepted your place request.",
                  )
                : TextSpan(
                    children: [
                      const TextSpan(
                        text: "has denied your place request.",
                      ),
                      const TextSpan(
                        text: "\nReason: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: message,
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
