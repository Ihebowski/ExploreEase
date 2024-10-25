import 'package:exploreease/views/auth/signin_page.dart';
import 'package:exploreease/views/constants/colors.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Create a New Account",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        "Create an account so you can start using the application after sign up.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 18.0,
                          color: text2Color,
                        ),
                      ),
                      const SizedBox(height: 25.0),
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
                              labelText: "Username",
                              labelStyle: const TextStyle(
                                color: text2Color,
                                fontSize: 18.0,
                              ),
                              floatingLabelStyle: const TextStyle(
                                color: primaryColor,
                                fontSize: 20.0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                const BorderSide(color: Colors.transparent),
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
                              labelText: "Email",
                              labelStyle: const TextStyle(
                                color: text2Color,
                                fontSize: 18.0,
                              ),
                              floatingLabelStyle: const TextStyle(
                                color: primaryColor,
                                fontSize: 20.0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                const BorderSide(color: Colors.transparent),
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
                              labelText: "Password",
                              labelStyle: const TextStyle(
                                color: text2Color,
                                fontSize: 18.0,
                              ),
                              floatingLabelStyle: const TextStyle(
                                color: primaryColor,
                                fontSize: 20.0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                const BorderSide(color: Colors.transparent),
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
                              labelText: "Repeat Password",
                              labelStyle: const TextStyle(
                                color: text2Color,
                                fontSize: 18.0,
                              ),
                              floatingLabelStyle: const TextStyle(
                                color: primaryColor,
                                fontSize: 20.0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                const BorderSide(color: Colors.transparent),
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                            fillColor: MaterialStateProperty.all<Color>(itemBackgroundColor),
                            checkColor: secondaryColor,
                            activeColor: primaryColor,
                            value: true,
                            onChanged: (value) {},
                          ),
                          Expanded(
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                                children: [
                                  TextSpan(
                                    text: "I agree to the",
                                    style: TextStyle(
                                      color: text1Color,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Terms of Service ",
                                    style: TextStyle(
                                      color: text1Color,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "and",
                                    style: TextStyle(
                                      color: text1Color,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Privacy Policy ",
                                    style: TextStyle(
                                      color: text1Color,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50.0),
                      SizedBox(
                        height: 60.0,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            elevation: const MaterialStatePropertyAll<double>(0.0),
                            backgroundColor:
                            const MaterialStatePropertyAll<Color>(primaryColor),
                          ),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18.0,
                              color: text3Color,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: text1Color,
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInPage(),
                            ),
                          );
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}