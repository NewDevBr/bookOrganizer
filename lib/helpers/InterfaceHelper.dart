import 'package:flutter/material.dart';

// This class help construct GUI no repeting code
class InterfaceHelper {
  // makeUntilScreen create a basic structure to all screens on this app
  Widget makeUntilScreen(BuildContext context, Widget body, bool splash) =>
      SafeArea(
          child: Scaffold(
        backgroundColor: splash ? Theme.of(context).primaryColor : Colors.white,
        body: splash ? center(body) : screenBorder(body),
      ));

  // Define border of all screens on this app
  Widget screenBorder(Widget wid) => Padding(
      padding: EdgeInsets.only(top: 30, bottom: 25, right: 20, left: 20),
      child: wid);

  // Text formatter
  TextStyle get h1 => TextStyle(fontSize: 42, fontWeight: FontWeight.w900);
  TextStyle get h2 => TextStyle(fontSize: 20, fontWeight: FontWeight.normal);

  // Widget alignment
  Widget center(Widget wid) => Align(alignment: Alignment.center, child: wid);

  Widget left(Widget wid) => Align(alignment: Alignment.topLeft, child: wid);

  Widget padding({double padding = 120}) =>
      Padding(padding: EdgeInsets.only(top: padding));

  Widget paddingLeft(Widget wid) =>
      Padding(padding: EdgeInsets.only(left: 12), child: wid);

  Widget paddingRight(Widget wid) =>
      Padding(padding: EdgeInsets.only(right: 12), child: wid);

  // Making button
  Widget beatyfullButton(BuildContext context, String buttonLabel) =>
      this.paddingRight(
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.grey),
              ),
            ),
          ),
          onPressed: () => Navigator.pushNamed(context, '/appDocs'),
          child: Text(
            buttonLabel,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black),
          ),
        ),
      );
}
