import 'package:flutter/material.dart';

class OverlaySheet {
  showOverlaySheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(canvasColor: Colors.transparent),
            home: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
            ),
          );
        });
  }
}
