import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/about_section_text.dart';

import '../../components/my_button.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      width: double.infinity,
      child: Column(
        children: [
          size.width < 922
              ? Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 600,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      AboutTextWithSign(isHorizontal: true),
                      AboutSectionText(
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
                      ExperienceCard(numOfExp: "08"),
                      AboutSectionText(
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
                    ],
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AboutTextWithSign(),
                    const AboutSectionText(
                        text:
                            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
                    const ExperienceCard(numOfExp: "08"),
                    Container(),
                    const AboutSectionText(
                        text:
                            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
                  ],
                ),
          const SizedBox(height: kDefaultPadding * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                  src: "assets/images/hand.png",
                  text: "Hire Me!",
                  onPressed: () {}),
              const SizedBox(width: kDefaultPadding * 1.5),
              MyButton(
                  src: "assets/images/download.png",
                  text: "Download CV",
                  background: Colors.blueAccent.withOpacity(0.2),
                  onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}
