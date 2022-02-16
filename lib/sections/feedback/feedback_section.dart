import 'package:flutter/material.dart';
import '/components/section_title.dart';
import '/constants.dart';
import '/models/feedback.dart';
import '/sections/feedback/components/feedback_card.dart';

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
