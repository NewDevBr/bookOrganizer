import 'package:book_organizer/helpers/InterfaceHelper.dart';
import 'package:flutter/material.dart';

class BooksMain extends StatefulWidget {
  @override
  _BooksMain createState() => _BooksMain();
}

InterfaceHelper ih = InterfaceHelper();

class _BooksMain extends State<BooksMain> {
  @override
  Widget build(BuildContext context) => ih.makeUntilScreen(
      context,
      SingleChildScrollView(
        child: Column(
          children: [
            ih.left(Text('Your book list', style: ih.h1)),
            ih.padding(padding: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                ih.beatyfullButton(context, 'List all books'),
                ih.beatyfullButton(context, 'Add new book'),
                ih.beatyfullButton(context, 'Delete a book'),
                ih.beatyfullButton(context, 'Classify by book gender'),
              ]),
            ),
            Divider(
              color: Colors.grey,
              thickness: 2.5,
            ),
          ],
        ),
      ),
      false);
}
