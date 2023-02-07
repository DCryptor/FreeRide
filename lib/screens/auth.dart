import 'package:flutter/material.dart';
import 'package:test_app/screens/password_recovery.dart';
import 'package:test_app/screens/register.dart';

class AuthorizationApp extends StatelessWidget {
  const AuthorizationApp({super.key});

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
              "Добрый день!",
              style: TextStyle(
                fontSize: 32,
                color: Colors.black87,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              "Введите номер и пароль, чтобы войти в свой аккаунт.",
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
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 14,
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                label: Text("Пароль"),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.only(
              right: 20,
              bottom: 14,
            ),
            child: TextButton(
              child: Text(
                "Забыли пароль?",
                style: TextStyle(
                  color: Colors.black54,
                  decoration: TextDecoration.underline,
                  decorationThickness: 0.3,
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PasswordRecoveryApp()));
              },
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
                "Войти",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "У вас еще нет аккаунта?",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: TextButton(
                  child: Text(
                    "Зарегистрироваться.",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationThickness: 0.3,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationApp()));
                  },
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
