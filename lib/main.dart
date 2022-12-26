import 'package:flutter/material.dart';
import 'package:property_trade_app/screens/login_by_social_media.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
            primary: Colors.black,
          ),
        ),
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}
