import 'package:flutter/material.dart';
import 'package:haus_kafein/pages/widgets/custom_navbar.dart';

class cafe_Page extends StatelessWidget {
  const cafe_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('data'),
      ),
      floatingActionButton: custom_Navbar(
        isHome: false,
        isCafe: true,
        isMagazine: false,
        isRecipe: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
