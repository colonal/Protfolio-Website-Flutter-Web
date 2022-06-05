import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_web/constants.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> menuItmes = [
      "Home",
      "Abour",
      "Services",
      "Portfolio",
      "Testimonial",
      "Contact,"
    ];
    return Drawer(
      child: Column(
        children: [
          ClipRRect(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.fill),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset("assets/images/Logo.png")),
                    Image.asset("assets/images/person.png"),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          ...menuItmes
              .map((e) => ListTile(
                    title: Text(e),
                    onTap: () {},
                    trailing:
                        const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  ))
              .toList()
        ],
      ),
    );
  }
}
