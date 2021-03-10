import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';

class SocialCard extends StatefulWidget {
  final String iconSrc, name;
  final Color color;
  final Function press;

  const SocialCard({Key key, this.iconSrc, this.name, this.color, this.press})
      : super(key: key);

  @override
  _SocialCardState createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover) kDefaultCardShadow]),
          child: Row(
            children: [
              Image.asset(
                widget.iconSrc,
                height: 80,
                width: 80,
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              Text(widget.name)
            ],
          ),
        ),
      ),
    );
  }
}
