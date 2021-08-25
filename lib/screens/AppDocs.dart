import 'package:book_organizer/helpers/InterfaceHelper.dart';
import 'package:flutter/material.dart';

class AppDocs extends StatefulWidget {
  @override
  _AppDocs createState() => _AppDocs();
}

InterfaceHelper ih = InterfaceHelper();

class _AppDocs extends State<AppDocs> {
  @override
  Widget build(BuildContext context) => ih.makeUntilScreen(
      context,
      SingleChildScrollView(
          child: Column(
        children: [
          ih.left(Text('App docs', style: ih.h1)),
          ih.padding(padding: 25.0),
          Divider(
            color: Colors.grey,
            thickness: 4.0,
          ),
          ih.padding(padding: 25.0),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec euismod metus. Cras semper erat mauris, nec consectetur eros dignissim quis. Proin a augue vehicula, pellentesque lorem id, mattis est. Etiam nec congue metus. Integer nisi lectus, rhoncus non bibendum vitae, condimentum sit amet est. Ut nibh arcu, luctus non sem et, tempor cursus ligula. Donec laoreet feugiat hendrerit. Integer sed massa pharetra, euismod nisl eget, pretium urna. Fusce tincidunt lectus vitae aliquet tempus. Maecenas ligula libero, pharetra vitae justo in, vulputate dapibus urna. Proin in nisi ut libero dignissim fermentum. Curabitur eget metus nunc. \n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec euismod metus. Cras semper erat mauris, nec consectetur eros dignissim quis. Proin a augue vehicula, pellentesque lorem id, mattis est. Etiam nec congue metus. Integer nisi lectus, rhoncus non bibendum vitae, condimentum sit amet est. Ut nibh arcu, luctus non sem et, tempor cursus ligula. Donec laoreet feugiat hendrerit. Integer sed massa pharetra, euismod nisl eget, pretium urna. Fusce tincidunt lectus vitae aliquet tempus. Maecenas ligula libero, pharetra vitae justo in, vulputate dapibus urna. Proin in nisi ut libero dignissim fermentum. Curabitur eget metus nunc. \n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec euismod metus. Cras semper erat mauris, nec consectetur eros dignissim quis. Proin a augue vehicula, pellentesque lorem id, mattis est. Etiam nec congue metus. Integer nisi lectus, rhoncus non bibendum vitae, condimentum sit amet est. Ut nibh arcu, luctus non sem et, tempor cursus ligula. Donec laoreet feugiat hendrerit. Integer sed massa pharetra, euismod nisl eget, pretium urna. Fusce tincidunt lectus vitae aliquet tempus. Maecenas ligula libero, pharetra vitae justo in, vulputate dapibus urna. Proin in nisi ut libero dignissim fermentum. Curabitur eget metus nunc. \n\n",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              textAlign: TextAlign.justify),
        ],
      )),
      false);
}
