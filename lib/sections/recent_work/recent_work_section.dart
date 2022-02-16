import 'package:flutter/material.dart';
import 'package:web_app/components/hireme_card.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/recent_work.dart';
import 'package:web_app/sections/recent_work/components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          SectionTitle(
            title: "Trabalhos Recentes",
            subTitle: "Nossas Áreas Fortes",
            color: Colors.white,
          ),
          SizedBox(
            height: kDefaultPadding * 1.5,
          ),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                  recentWorks.length,
                  (index) => RecentWorkCard(
                        index: index,
                        press: () {},
                      )),
            ),
          ),
          SizedBox(
            height: kDefaultPadding * 5,
          )
        ],
      ),
    );
  }
}
