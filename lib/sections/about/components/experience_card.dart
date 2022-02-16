import 'package:flutter/material.dart';
import '/constants.dart';

class ExperienceCard extends StatelessWidget {
  final String numOfExp;

  const ExperienceCard({Key key, this.numOfExp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      height: 240,
      width: 255,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  color: Colors.black.withOpacity(0.25))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    // shadows: [
                    //   BoxShadow(
                    //       offset: Offset(0, 5),
                    //       blurRadius: 10,
                    //       color: Colors.black.withOpacity(0.5))
                    // ]
                  ),
                ),
                Text(
                  numOfExp,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Text(
              "Anos de Mercado",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
