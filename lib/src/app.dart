import 'package:flutter/material.dart';
import 'package:pethome_connect/src/screens/home_page.dart';
import 'package:pethome_connect/src/screens/login_page.dart';
import 'package:pethome_connect/src/screens/signUp_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PetHome Connect',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => LoginPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/HomePage': (context) => HomePage(),
        '/SignUpPage': (context) => SignUpPage(),
      },
    );
  }
}
