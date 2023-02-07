import 'package:flutter/material.dart';
import 'package:test_app/screens/auth.dart';
import 'package:test_app/screens/register.dart';

class PasswordRecoveryApp extends StatelessWidget {
  const PasswordRecoveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            width: 200,
            height: 200,
            child: Image(
              image: AssetImage("assets/logo.png"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              "Восстановление пароля",
              style: TextStyle(
                fontSize: 32,
                color: Colors.black87,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              "Введите номер для восстановление пароля",
              style: TextStyle(
                fontSize: 12,
                color: Colors.black54,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 24,
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.call),
                border: OutlineInputBorder(),
                label: Text("Номер телефона"),
              ),
            ),
          ),
          Container(
            height: 70,
            width: 240,
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 24,
            ),
            child: ElevatedButton(
              child: Text(
                "Восстановить",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            height: 70,
            width: 240,
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 24,
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: Text(
                "Отмена",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AuthorizationApp()));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
