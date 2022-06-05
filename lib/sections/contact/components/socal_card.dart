import 'package:flutter/material.dart';

import '../../../constants.dart';

class SocalCard extends StatefulWidget {
  final String src, text;
  final Color color;
  const SocalCard({
    required this.text,
    required this.src,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  State<SocalCard> createState() => _SocalCardState();
}

class _SocalCardState extends State<SocalCard> {
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
      child: FittedBox(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultShadow],
          ),
          child: Row(
            children: [
              Image.asset(
                widget.src,
                height: size.width < 705 ? 40 : 80,
                width: size.width < 705 ? 40 : 80,
              ),
              const SizedBox(width: kDefaultPadding),
              Text(widget.text)
            ],
          ),
        ),
      ),
    );
  }
}
