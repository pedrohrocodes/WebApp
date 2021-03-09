import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';

class MyOutlineButton extends StatelessWidget {
  final String imageSrc, text;
  final Function press;

  const MyOutlineButton({Key key, this.imageSrc, this.text, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        child: OutlineButton(
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      borderSide: BorderSide(color: Color(0xFFEDEDED)),
      onPressed: press,
      child: Row(
        children: [
          Image.asset(
            imageSrc,
            height: 40,
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Text(text)
        ],
      ),
    ));
  }
}
