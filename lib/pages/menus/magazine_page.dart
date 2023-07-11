import 'package:flutter/material.dart';

import '../widgets/custom_navbar.dart';

class magazine_Page extends StatelessWidget {
  const magazine_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Magazine Page'),
      ),
      floatingActionButton: custom_Navbar(
        isHome: false,
        isCafe: false,
        isMagazine: true,
        isRecipe: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
