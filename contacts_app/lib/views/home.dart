import 'package:contacts_app/viewmodels/home_viewmodel.dart';
import 'package:contacts_app/widgets/contact_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String route = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeViewModel _homeViewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: widgets,
      //   ),
      // ),

      body: ListView.separated(
        itemBuilder: (BuildContext content, int index) {
          return ContactCard(contact: _homeViewModel.data[index]);
        },
        itemCount: _homeViewModel.data.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          thickness: 1,
          color: Colors.grey,
          // color: Colors.,
        ),
      ),
    );

    // return _contactCard(data.first);
  }
}
