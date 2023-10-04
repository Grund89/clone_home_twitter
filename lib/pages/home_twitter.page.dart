import 'package:clone_home_twitter/widgets/custom_button.widget.dart';
import 'package:clone_home_twitter/widgets/social_button.widget.dart';
import 'package:clone_home_twitter/widgets/terms_and_privacy.widget.dart';
import 'package:flutter/material.dart';

class HomeTwitterPage extends StatelessWidget {
  const HomeTwitterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/images/twitter.png",
                width: 40,
                height: 40,
              ),
              const Expanded(
                child: Align(
                  child: Text(
                    "See what's happening in the world right now",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SocialButton(
                pathImage: "assets/images/google.webp",
                text: "Continue with Google ",
              ),
              const SizedBox(
                height: 15,
              ),
              const SocialButton(
                pathImage: "assets/images/apple.png",
                text: "Continue with Apple",
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("or"),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomButton(
                text: "Create account",
              ),
              const SizedBox(
                height: 30,
              ),
              const TermsAndPrivacy(),
              const SizedBox(
                height: 50,
              ),
              RichText(
                text: const TextSpan(
                  text: "Have an account already?",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "Log in",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
