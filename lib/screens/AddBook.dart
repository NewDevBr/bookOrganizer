import 'package:flutter/material.dart';
import 'package:book_organizer/helpers/InterfaceHelper.dart';

class AddBook extends StatefulWidget {
  @override
  _AddBook createState() => _AddBook();
}

InterfaceHelper ih = InterfaceHelper();

class _AddBook extends State<AddBook> {
  @override
  Widget build(BuildContext context) => ih.makeUntilScreen(
      context,
      Column(
        children: [],
      ),
      false);
}
