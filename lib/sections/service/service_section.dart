import 'package:flutter/material.dart';
import '/components/section_title.dart';
import '/constants.dart';
import '/models/service.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Colors.white,
            title: "Serviços Oferecidos",
            subTitle: "Nossas Áreas Fortes",
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  services.length, (index) => ServiceCard(index: index)))
        ],
      ),
    );
  }
}
