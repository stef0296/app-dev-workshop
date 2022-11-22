import 'package:contacts_app/dummy_data.dart';
import 'package:contacts_app/model/contacs_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ContactsModel> data = contactsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return _contactCard(data[index]);
        },
        itemCount: data.length,
      ),
    );

    // return _contactCard(data.first);
  }

  Widget _contactCard(ContactsModel contact) {
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
        ],
      ),
    );
  }
}
