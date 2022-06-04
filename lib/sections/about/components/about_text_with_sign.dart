import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutTextWithSign extends StatelessWidget {
  final bool isHorizontal;
  const AboutTextWithSign({
    this.isHorizontal = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isHorizontal
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "About my story",
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(width: kDefaultPadding * 2),
              Image.asset("assets/images/sign.png")
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About\nmy story",
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: kDefaultPadding * 2),
              Image.asset("assets/images/sign.png")
            ],
          );
  }
}
