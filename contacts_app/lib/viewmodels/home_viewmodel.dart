import 'package:contacts_app/arguments/ContactFormArguments.dart';
import 'package:contacts_app/dummy_data.dart';
import 'package:contacts_app/model/contacs_model.dart';
import 'package:contacts_app/views/contact_form.dart';
import 'package:flutter/material.dart';

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
