import 'package:flutter/material.dart';
import 'package:project1/page_sign_in_&_up/login_one.dart';
import 'package:project1/page_sign_in_&_up/sign_up.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "login",
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginOne(),
        "/singup": (context) => SignUp(),
      },
    );
  }
}
