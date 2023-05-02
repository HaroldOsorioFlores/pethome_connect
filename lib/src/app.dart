import 'package:flutter/material.dart';
import 'package:pethome_connect/src/screens/home/home_page.dart';

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
      home: Center(child: HomePage()),
    );
  }
}
