import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:test_app/screens/auth.dart';

class ContentApp extends StatelessWidget {
  const ContentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Объявления"),
      ),
      body: Column(children: [
        Container(
            child: OrderSell(
                "Николай С.", "ул.Ярославского 89а", "ул.Ойуунского 16", "100"))
      ]),
    );
  }
}

Widget OrderSell(String name, String a, String b, String sell) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(right: 20),
              height: 80,
              width: 80,
              child: CircleAvatar(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(a),
                    ),
                    Container(
                      child: Text(b),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        Container(
          child: Text(
            sell + "Р",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black87,
            ),
          ),
        )
      ],
    ),
  );
}
