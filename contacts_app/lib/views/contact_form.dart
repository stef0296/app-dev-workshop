import 'package:contacts_app/arguments/ContactFormArguments.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  static const route = '/contact-form';

  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ContactFormArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ContactFormArguments;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text('Hello, ${arguments.contact.firstName}'),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
