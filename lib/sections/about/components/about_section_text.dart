import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';

class AboutSectionText extends StatelessWidget {
  final String text;

  const AboutSectionText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w200,
            color: Colors.white.withOpacity(.8),
            height: 2),
      ),
    );
  }
}
