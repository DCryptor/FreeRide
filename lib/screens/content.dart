import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:test_app/screens/auth.dart';

class ContentApp extends StatelessWidget {
  const ContentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Объявления"),
      ),
      body: Column(children: [
        Container(
            child: OrderSell("assets/avatar.jpg",
                "С.НИКОЛАЙ", "ул.Ярославского 89а", "ул.Ойуунского 16", "100","17:30")),
        Container(
            child: OrderSell("assets/avatar.jpg",
                "Л.ВАСИЛИЙ", "ул.Калинина 36", "ул.Мира 15", "150","17:20")),
        Container(
            child: OrderSell("assets/avatar.jpg",
                "К.КЭСКИЛ", "ул.Озерная 1", "ул.Чернышевского 129", "250","16:55")),
      ]),
    );
  }
}

Widget OrderSell(String avatar,String name, String a, String b, String sell, String date) {
  return Container(
    margin: EdgeInsets.only(bottom: 2,top: 2,),
    padding: EdgeInsets.only(left: 10,right: 10),
    color: Colors.white,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: CircleAvatar(backgroundImage: AssetImage(avatar),radius: 35,),
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
                          fontSize: 16,
                          color: Colors.blue,
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
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(child: ElevatedButton(onPressed: (){},child: Text("Отменить"),),),
                Container(child: ElevatedButton(onPressed: (){},child: Text("Принять заказ"),),),
                Container(child: ElevatedButton(onPressed: (){},child: Text("+ 50 рублей"),),),
              ],
            ),
            Container(padding: EdgeInsets.only(top: 10, bottom: 10,),child: Text("Время публикации объявления: " + date),)
          ],
        )
      ],
    ),
  );
}
