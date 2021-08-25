import 'package:flutter/material.dart';
import 'package:book_organizer/helpers/InterfaceHelper.dart';

class SplashPage extends StatefulWidget {
  _SplashPage createState() => _SplashPage();
}

InterfaceHelper ih = InterfaceHelper();

class _SplashPage extends State<SplashPage> {
  @override
  Widget build(BuildContext context) =>
      ih.makeUntilScreen(context, Text("Book Organizer", style: ih.h1), true);

  // After 3 seconds this page will redirect user to Home page
  @override
  void didChangeDependencies() {
    Future.delayed(Duration(seconds: 3))
        .then((v) => {Navigator.popAndPushNamed(context, '/home')});
    super.didChangeDependencies();
  }
}
