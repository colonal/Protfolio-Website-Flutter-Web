import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../models/service.dart';

import '../../components/section_title.dart';
import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
              title: "My Strong Arenas", subTitle: "Service Offerings"),
          Wrap(
            spacing: kDefaultPadding,
            children: List.generate(
                services.length,
                (index) => ServiceCard(
                      services: services[index],
                    )),
          )
        ],
      ),
    );
  }
}
