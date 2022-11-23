import 'package:contacts_app/arguments/ContactFormArguments.dart';
import 'package:contacts_app/dummy_data.dart';
import 'package:contacts_app/model/contacs_model.dart';
import 'package:contacts_app/views/contact_form.dart';
import 'package:flutter/material.dart';

/// For viewmodels, prefer using singleton pattern
/// This creates a single instance which can be used throughout the app
/// This ensures that the variables and data-stores being accessed are the same across all screens.

class HomeViewModel {
  HomeViewModel._();
  static HomeViewModel? _instance;

  factory HomeViewModel() {
    _instance ??= HomeViewModel._();
    return _instance!;
  }

  List<ContactsModel> _data = contactsList;

  List<ContactsModel> get data => _data;

  set data(List<ContactsModel> value) {
    _data = value;
  }

  void editContact(BuildContext context, ContactsModel contact) {
    /// Simple navigation by pushing new Views with a PageRoute
    /// For routing you can either use:
    ///  MaterialPageRoute ref: https://api.flutter.dev/flutter/material/MaterialPageRoute-class.html
    /// or
    /// CupertinoPageRoute ref: https://api.flutter.dev/flutter/cupertino/CupertinoPageRoute-class.html

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (BuildContext context) => const ContactForm(),
    //   ),
    // );

    Navigator.pushNamed(
      context,
      ContactForm.route,
      arguments: ContactFormArguments(contact),
    );
  }

  void deleteContact() {
    print('Delete button clicked');
  }
}
