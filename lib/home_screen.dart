import 'package:flutter/material.dart';
import 'components/my_derawer.dart';
import 'constants.dart';
import 'sections/about/about_section.dart';
import 'sections/contact/contact_section.dart';
import 'sections/feedback/feedback_section.dart';
import 'sections/service/service_section.dart';
import 'sections/top_section/top_section.dart';

import 'sections/recent_work/recent_work_section.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: [
          SingleChildScrollView(
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
          if (size.width < 705)
            Positioned(
                top: 10,
                left: 10,
                child: IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    icon: const Icon(Icons.menu)))
        ],
      ),
      drawer: size.width < 705 ? const MyDrawer() : null,
    );
  }
}
