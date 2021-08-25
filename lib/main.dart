import 'package:flutter/material.dart';
import 'package:book_organizer/screens/Splash.dart';
import 'package:book_organizer/screens/Home.dart';
import 'package:book_organizer/screens/BooksMain.dart';
import 'package:book_organizer/screens/AppDocs.dart';
import 'package:book_organizer/screens/AddBook.dart';

main() => runApp(BookOrganizer());

class BookOrganizer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _application(context);
}

Widget _application(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'bookOrganizer',
    theme: ThemeData(primaryColor: Colors.yellow),
    initialRoute: '/splash',
    routes: {
      '/splash': (BuildContext context) => SplashPage(),
      '/home': (BuildContext context) => HomePage(),
      '/booksMain': (BuildContext context) => BooksMain(),
      '/appDocs': (BuildContext context) => AppDocs(),
      '/addBooks': (BuildContext context) => AddBook()
    },
  );
}
