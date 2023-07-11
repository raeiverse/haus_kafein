import 'package:flutter/material.dart';

import '../widgets/custom_navbar.dart';

class recipe_Page extends StatelessWidget {
  const recipe_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Recipe Page'),
      ),
      floatingActionButton: custom_Navbar(
        isHome: false,
        isCafe: false,
        isMagazine: false,
        isRecipe: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
