import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => Login(),
        "/": (context) => HomePage(),
      },
    );
  }
}
