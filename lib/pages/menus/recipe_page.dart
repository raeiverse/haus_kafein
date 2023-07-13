import 'package:flutter/material.dart';
import 'package:haus_kafein/pages/widgets/back_Button.dart';
import 'package:haus_kafein/pages/widgets/liniear_Background_Images.dart';
import 'package:haus_kafein/pages/widgets/recipe_list_card.dart';
import 'package:haus_kafein/theme.dart';

import '../widgets/custom_navbar.dart';

class recipe_Page extends StatelessWidget {
  const recipe_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_Colors,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            children: [
              liniear_Background_Image(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  back_Button(),
                  Padding(
                    padding: EdgeInsets.only(
                      left: margin_Screen_Horizontal,
                      bottom: margin_Cards_Vertical,
                    ),
                    child: Text(
                      "Team Review",
                      style: textstyle_Title_CLash_L.copyWith(
                        color: neutral_100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: margin_Screen_Horizontal,
                      bottom: margin_Screen_Vertical * 5,
                    ),
                    child: Wrap(
                      children: [
                        recipe_List_Card(),
                        recipe_List_Card(),
                        recipe_List_Card(),
                        recipe_List_Card(),
                        recipe_List_Card(),
                        recipe_List_Card(),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
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
