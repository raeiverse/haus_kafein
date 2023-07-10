import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';

class custom_Navbar extends StatelessWidget {
  bool isHome;
  bool isCafe;
  bool isMagazine;
  bool isRecipe;

  custom_Navbar({
    required this.isHome,
    required this.isCafe,
    required this.isMagazine,
    required this.isRecipe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: margin_Cards_Vertical * 1.5),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 22,
      color: transparant_Colors,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/home_Page');
            },
            child: Image.asset(
              'assets/icons/icons_home.png',
              color: this.isHome ? primary_Main : neutral_60,
              width: 28,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/cafe_Page');
            },
            child: Image.asset(
              'assets/icons/icons_cafe.png',
              color: this.isCafe ? primary_Main : neutral_60,
              width: 28,
            ),
          ),
          Image.asset(
            'assets/icons/icons_magazine.png',
            color: this.isMagazine ? primary_Main : neutral_60,
            width: 28,
          ),
          Image.asset(
            'assets/icons/icons_recipe.png',
            color: this.isRecipe ? primary_Main : neutral_60,
            width: 28,
          ),
        ],
      ),
    );
  }
}
