import 'package:flutter/material.dart';
import 'constants.dart';
import 'sections/about/about_section.dart';
import 'sections/contact/contact_section.dart';
import 'sections/feedback/feedback_section.dart';
import 'sections/service/service_section.dart';
import 'sections/top_section/top_section.dart';

import 'sections/recent_work/recent_work_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TopSection(),
            SizedBox(height: kDefaultPadding),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            FeedbackSection(),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
