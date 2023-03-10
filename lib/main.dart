import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/auth.dart';
import 'screens/register.dart';
import 'screens/password_recovery.dart';
import 'screens/content.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome. setPreferredOrientations([ DeviceOrientation. portraitUp,]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      title: 'Material App',
      home: ContentApp(),
    );
  }
}
