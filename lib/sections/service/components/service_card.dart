import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/service.dart';

class ServiceCard extends StatefulWidget {
  final int index;

  const ServiceCard({Key key, this.index}) : super(key: key);

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = true;
  Duration duration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        height: 256,
        width: 256,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultShadow]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              padding: EdgeInsets.all(kDefaultPadding * 1.5),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    if (!isHover)
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 30,
                          color: Colors.black.withOpacity(0.1))
                  ]),
              child: Image.asset(
                services[widget.index].image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: kDefaultPadding),
            Text(
              services[widget.index].title,
              style: TextStyle(fontSize: 22, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
