import 'package:flutter/material.dart';
import 'package:haus_kafein/pages/menus/cafe_page.dart';
import 'package:haus_kafein/pages/menus/home_page.dart';
import 'package:haus_kafein/pages/menus/magazine_page.dart';
import 'package:haus_kafein/pages/menus/recipe_page.dart';
import 'package:haus_kafein/pages/splash_screen/splash_screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Splash_Screen_1(),
        '/home_Page': (context) => home_Page(),
        '/cafe_Page': (context) => cafe_Page(),
        '/magazine_Page': (context) => magazine_Page(),
        '/recipe_Page': (context) => recipe_Page(),
      },
    );
  }
}
