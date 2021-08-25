import 'package:flutter/material.dart';
import 'package:book_organizer/helpers/InterfaceHelper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

InterfaceHelper ih = InterfaceHelper();

class _HomePage extends State<HomePage> {
  Widget build(BuildContext context) => ih.makeUntilScreen(
        context,
        Column(
          children: [
            ih.left(Text('Welcome to \nBook Organizer', style: ih.h1)),
            ih.left(Text('We help you organize your book shelf', style: ih.h2)),
            ih.padding(),
            ih.center(
              Container(
                height: 200,
                width: 200,
                child: Image.asset("lib/resources/books_edited.png"),
              ),
            ),
            ih.padding(),
            ih.left(
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/booksMain'),
                    child: Text(
                      "Let's go!",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ),
                  ih.paddingLeft(
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                        primary: Colors.blue,
                        side: BorderSide(width: 2.0, color: Colors.yellow),
                      ),
                      onPressed: () => Navigator.pushNamed(context, '/appDocs'),
                      child: Text(
                        "App docs",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        false,
      );
}
