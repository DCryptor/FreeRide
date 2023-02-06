import 'package:flutter/material.dart';
import 'package:test_app/screens/auth.dart';

class RegistrationApp extends StatelessWidget {
  const RegistrationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            width: 200,
            height: 200,
            child: Image(
              image: AssetImage("logo.png"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              "Регистрация",
              style: TextStyle(
                fontSize: 32,
                color: Colors.black87,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              "Заполните все поля чтобы зарегистрироваться.",
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
              bottom: 24,
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
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 24,
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                label: Text("Подтвердить пароль"),
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
                "Зарегистрироваться",
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
                  "У вас уже есть аккаунт?",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: TextButton(
                  child: Text(
                    "Войти.",
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
                            builder: (context) => AuthorizationApp()));
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
