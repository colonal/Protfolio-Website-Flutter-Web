import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
        bottom: 0,
        right: 0,
        child: Container(
          constraints: BoxConstraints(
              maxWidth: size.width < 1000 ? 400 : 639,
              maxHeight: size.width < 1206.0 ? 550 : 860),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/person.png"))),
        ));
  }
}
