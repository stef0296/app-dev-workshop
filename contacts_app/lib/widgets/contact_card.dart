import 'package:contacts_app/model/contacs_model.dart';
import 'package:contacts_app/widgets/contact_card_actions.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final ContactsModel contact;

  const ContactCard({
    Key? key,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Image.network(
              contact.image ?? 'https://randomuser.me/api/portraits/men/3.jpg',
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${contact.firstName} ${contact.lastName}'),
              Text(contact.number ?? 'n/a'),
              Text(contact.email ?? 'no email provided'),
            ],
          ),
          ContactCardActions(contact: contact),
        ],
      ),
    );
  }
}
