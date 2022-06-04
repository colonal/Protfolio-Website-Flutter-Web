import 'package:flutter/material.dart';
import '../constants.dart';

class SectionTitle extends StatelessWidget {
  final String title, subTitle;
  final Color color;
  const SectionTitle({
    required this.title,
    required this.subTitle,
    this.color = const Color(0xFFFF0000),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: const EdgeInsets.only(bottom: 72),
            width: 8,
            height: 100,
            color: Colors.black,
            child: DecoratedBox(
              decoration: BoxDecoration(color: color),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w200, color: kTextColor),
                ),
                Text(
                  subTitle,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: size.width < 600 ? 20 : 50,
                      ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
