import 'package:contacts_app/model/contacs_model.dart';
import 'package:contacts_app/viewmodels/home_viewmodel.dart';
import 'package:flutter/material.dart';

class ContactCardActions extends StatelessWidget {
  final ContactsModel contact;
  final HomeViewModel _homeViewModel = HomeViewModel();

  ContactCardActions({
    Key? key,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: () => _homeViewModel.editContact(context, contact),
          child: const Text('Edit'),
        ),
        TextButton(
          onPressed: _homeViewModel.deleteContact,
          child: const Text('Delete'),
        ),
      ],
    );
  }
}
