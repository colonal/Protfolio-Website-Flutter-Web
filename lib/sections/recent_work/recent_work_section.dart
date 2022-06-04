import 'package:flutter/material.dart';
import '../../components/section_title.dart';
import '../../constants.dart';
import '../../models/recent_work.dart';

import '../../components/hireme_card.dart';
import 'components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFFF7E8FF).withOpacity(0.3),
          image: const DecorationImage(
              image: AssetImage("assets/images/recent_work_bg.png"),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Transform.translate(
              offset: const Offset(0, -80), child: const HireMeCard()),
          const SectionTitle(
            title: "Recent Woorks",
            subTitle: "My String Arenas",
            color: Color(0xFFFFB100),
          ),
          const SizedBox(height: kDefaultPadding * 1.5),
          SizedBox(
            width: 1110,
            child: Center(
              child: Wrap(
                spacing: kDefaultPadding,
                runSpacing: kDefaultPadding * 2,
                children: List.generate(recentWorks.length,
                    (index) => RecentWorkCard(index: index)),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}
