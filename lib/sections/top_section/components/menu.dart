import 'package:flutter/material.dart';

import '../../../constants.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectIndex = 0;
  int hoverIndex = 0;
  List<String> menuItmes = [
    "Home",
    "Abour",
    "Services",
    "Portfolio",
    "Testimonial",
    "Contact,"
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: size.width < 1110 ? 600 : 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [
          kDefaultShadow,
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: kDefaultPadding * 0.6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...menuItmes.map((e) {
              int index = menuItmes.indexOf(e);
              return buildMenuItem(e, index, size);
            }).toList()
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(String e, int index, Size size) {
    return InkWell(
      onTap: () {
        setState(() {
          selectIndex = index;
        });
      },
      onHover: (value) {
        setState(() {
          value ? hoverIndex = index : hoverIndex = selectIndex;
        });
      },
      child: Container(
        constraints: BoxConstraints(maxWidth: size.width < 1110 ? 70 : 122),
        height: 50,
        width: double.infinity,
        alignment: Alignment.center,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  child: Text(
                    e,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: size.width < 1110 ? 13 : 18,
                        color: kTextColor),
                  ),
                ),
              ],
            ),
            // Hover
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom: selectIndex != index && hoverIndex == index
                  ? size.width < 1110
                      ? -5
                      : -20
                  : -32,
              child: Image.asset(
                "assets/images/Hover.png",
                fit: BoxFit.cover,
              ),
            ),
            // Select
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom:
                  selectIndex == index ? (size.width < 1110 ? -3 : -14) : -32,
              child: Image.asset(
                "assets/images/Hover.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
