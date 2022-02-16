import 'package:flutter/material.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/feedback.dart';
import 'package:web_app/sections/feedback/components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            title: "Feedbacks Recebido",
            subTitle: "Depoimentos de clientes que nos inspiraram muito",
            color: Colors.white,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                feedbacks.length,
                (index) => FeedbackCard(
                      index: index,
                    )),
          )
        ],
      ),
    );
  }
}
