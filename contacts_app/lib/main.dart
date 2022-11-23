import 'package:contacts_app/views/contact_form.dart';
import 'package:contacts_app/views/home.dart';
import 'package:flutter/material.dart';

/// Navigation basics: https://docs.flutter.dev/development/ui/navigation
/// For named routes refer: https://docs.flutter.dev/cookbook/navigation/named-routes
/// Passing arguments to named routes: https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments

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
