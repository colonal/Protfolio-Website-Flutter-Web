import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/recent_work.dart';

class RecentWorkCard extends StatefulWidget {
  final int index;
  const RecentWorkCard({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: size.width < 705 ? size.width * 0.3 : 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultShadow],
        ),
        child: size.width < 705
            ? Column(
                children: [
                  Image.asset(
                    recentWorks[widget.index].image,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding, vertical: kDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(recentWorks[widget.index].category.toUpperCase()),
                        const SizedBox(height: kDefaultPadding / 2),
                        Text(
                          recentWorks[widget.index].title,
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(height: 1.5),
                        ),
                        const SizedBox(height: kDefaultPadding),
                        const Text(
                          "View Details",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                  ),
                ],
              )
            : Row(
                children: [
                  Image.asset(
                    recentWorks[widget.index].image,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              recentWorks[widget.index].category.toUpperCase()),
                          const SizedBox(height: kDefaultPadding / 2),
                          Text(
                            recentWorks[widget.index].title,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(height: 1.5),
                          ),
                          const SizedBox(height: kDefaultPadding),
                          const Text(
                            "View Details",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
