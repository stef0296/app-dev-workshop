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

      /// A `Column` combined with a `SingleChildScrollView` achieves the same
      /// visual effect as a `ListView`.
      /// However the major difference is how it runs in the background.
      ///
      /// A Column will render all its children, which can be terrible for
      /// performance when you have a large number of child widgets.
      ///
      /// A ListView only renders widgets on the screen and a few extra in the buffer.
      /// This makes it highly performative for rendering a large number of widgets
      /// without overloading the memory.

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
