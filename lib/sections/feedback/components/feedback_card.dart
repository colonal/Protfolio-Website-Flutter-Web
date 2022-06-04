import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/feedback.dart';

class FeedbackCard extends StatefulWidget {
  final int index;
  const FeedbackCard({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  State<FeedbackCard> createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        height: 350,
        width: 350,
        decoration: BoxDecoration(
            color: feedbacks[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultShadow]),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding * 2),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      feedbacks[widget.index].review,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.copyWith(fontSize: 20),
                    ),
                    const SizedBox(height: kDefaultPadding),
                    Text(
                      feedbacks[widget.index].name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: Transform.translate(
                offset: const Offset(0, -40),
                child: AnimatedContainer(
                  duration: duration,
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(boxShadow: [if (!isHover) kDefaultShadow]),
                  child: CircleAvatar(
                    maxRadius: 40,
                    minRadius: 20,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 37,
                      backgroundImage:
                          AssetImage(feedbacks[widget.index].userPic),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
