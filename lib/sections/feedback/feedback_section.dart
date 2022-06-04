import 'package:flutter/material.dart';
import '../../components/section_title.dart';
import '../../constants.dart';
import '../../models/feedback.dart';

import 'components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      // constraints: const BoxConstraints(maxHeight: 1110),
      child: Column(
        children: [
          const SectionTitle(
            title: "Feedback Received",
            subTitle: "Client's testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          const SizedBox(height: kDefaultPadding),
          Center(
            child: Wrap(
              runSpacing: kDefaultPadding,
              spacing: kDefaultPadding,
              children: List.generate(
                  feedbacks.length, (index) => FeedbackCard(index: index)),
            ),
          )
        ],
      ),
    );
  }
}
