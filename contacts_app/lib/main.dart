import 'package:contacts_app/views/contact_form.dart';
import 'package:contacts_app/views/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomePage.route: (context) => const HomePage(),
        ContactForm.route: (context) => const ContactForm(),
      },
    );
  }
}
