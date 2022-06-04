import 'package:flutter/material.dart';
import '../constants.dart';

class MyButton extends StatelessWidget {
  final String src, text;
  final void Function()? onPressed;
  final Color? background;
  const MyButton({
    required this.src,
    required this.text,
    required this.onPressed,
    this.background,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: background,
          border: Border.all(color: const Color(0xFFEDEDED)),
          borderRadius: BorderRadius.circular(50),
        ),
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
          onPressed: onPressed,
          child: Row(
            children: [
              Image.asset(
                src,
                height: 40,
              ),
              const SizedBox(width: kDefaultPadding),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
