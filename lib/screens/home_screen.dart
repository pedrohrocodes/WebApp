import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/about/about_section.dart';
import 'package:web_app/sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            AboutSection(),
            // ServiceSection(),
            // RecentWOrkSection(),
            // FeedbackSection(),
            SizedBox(
              height: kDefaultPadding,
            ),
            // ContactSection(),
          ],
        ),
      ),
    );
  }
}
