import 'package:exploreease/views/auth/signin_page.dart';
import 'package:exploreease/views/core/landing_page.dart';
import 'package:flutter/material.dart';

class WrapperPage extends StatelessWidget {
  const WrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool loggedIn = false;
    if(loggedIn){
      return const LandingPage();
    } else {
      return const SignInPage();
    }
  }
}
