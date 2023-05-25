import 'package:flutter/material.dart';
import 'package:pethome_connect/src/screens/home_page.dart';
import 'package:pethome_connect/src/screens/login_page.dart';
import 'package:pethome_connect/src/screens/pet_page.dart';
import 'package:pethome_connect/src/screens/report_page.dart';
import 'package:pethome_connect/src/screens/signUp_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PetHome Connect',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/HomePage': (context) => HomePage(),
        '/SignUpPage': (context) => SignUpPage(),
        '/reportPage': (context) => reportPage(),
        '/petPage': (context) => petPage(),
      },
    );
  }
}