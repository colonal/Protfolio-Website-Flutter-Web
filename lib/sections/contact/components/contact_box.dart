import 'package:flutter/material.dart';
import '../../../components/my_button.dart';

import '../../../constants.dart';
import 'socal_card.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.only(top: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Wrap(
            spacing: kDefaultPadding,
            children: const [
              SocalCard(
                text: "The Flutter Wat",
                src: "assets/images/skype.png",
                color: Color(0xFFD9FFFC),
              ),
              SocalCard(
                text: "The Flutter Wat",
                src: "assets/images/whatsapp.png",
                color: Color(0xFFE4FFC7),
              ),
              SocalCard(
                text: "The Flutter Wat",
                src: "assets/images/messanger.png",
                color: Color(0xFFD9FFFC),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 2),
          const ContactForm()
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                  labelText: "Youer Name", hintText: "Enter Your Name"),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                  labelText: "Email Address",
                  hintText: "Enter Your Email Address"),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                  labelText: "Project Type", hintText: "Select Project Type"),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                  labelText: "Project Budget",
                  hintText: "Select Project Budget"),
            ),
          ),
          SizedBox(
            child: TextFormField(
              onChanged: (value) {},
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              decoration: const InputDecoration(
                  labelText: "Description", hintText: "Write some description"),
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Center(
            child: FittedBox(
              child: MyButton(
                src: "assets/images/contact_icon.png",
                text: "Contact Me!",
                onPressed: () {},
                background: Colors.blueAccent.withOpacity(0.1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
