import 'package:flutter/material.dart';
import 'package:haus_kafein/pages/widgets/close_Button.dart';
import 'package:haus_kafein/pages/widgets/filter_card.dart';
import 'package:haus_kafein/pages/widgets/liniear_Background_Images.dart';
import 'package:haus_kafein/theme.dart';

class filter_Page extends StatelessWidget {
  const filter_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_Colors,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              liniear_Background_Image(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: margin_Screen_Vertical * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // BEVERAGES SECTION ===>
                      Padding(
                        padding:
                            EdgeInsets.only(left: margin_Screen_Horizontal),
                        child: Text(
                          "Beverages",
                          style: textstyle_Title_CLash_L.copyWith(
                            color: neutral_100,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(right: margin_Screen_Horizontal),
                        child: close_Button(),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      // left: margin_Screen_Horizontal,
                      right: margin_Screen_Horizontal,
                    ),
                    child: Center(
                      child: Wrap(
                        children: [
                          filter_Card(
                            imageUrl: 'assets/icons/icons_coffee.png',
                            title: 'Coffee',
                          ),
                          filter_Card(
                            imageUrl: 'assets/icons/icons_tea.png',
                            title: 'Tea',
                          ),
                          filter_Card(
                            imageUrl: 'assets/icons/icons_milk.png',
                            title: 'Milk Based',
                          ),
                          filter_Card(
                            imageUrl: 'assets/icons/icons_boba.png',
                            title: 'Boba',
                          ),
                          filter_Card(
                            imageUrl: 'assets/icons/icons_yogurt.png',
                            title: 'Yogurt',
                          ),
                          filter_Card(
                            imageUrl: 'assets/icons/icons_ice.png',
                            title: 'Ice Cream',
                          ),
                          filter_Card(
                            imageUrl: 'assets/icons/icons_smoothies.png',
                            title: 'Smoothies',
                          ),
                          filter_Card(
                            imageUrl: 'assets/icons/icons_chocolate.png',
                            title: 'Chocolate',
                          ),
                          filter_Card(
                            imageUrl: 'assets/icons/icons_soft.png',
                            title: 'Ice Cream',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: margin_Screen_Vertical * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // FOOD SECTION ===>
                      Padding(
                        padding: EdgeInsets.only(
                          left: margin_Screen_Horizontal,
                          bottom: margin_Screen_Vertical,
                        ),
                        child: Text(
                          "FOOD",
                          style: textstyle_Title_CLash_L.copyWith(
                            color: neutral_100,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: margin_Screen_Horizontal / 3,
                      right: margin_Screen_Horizontal,
                    ),
                    child: Wrap(
                      children: [
                        filter_Card(
                          imageUrl: 'assets/icons/icons_snack.png',
                          title: 'Snack',
                        ),
                        filter_Card(
                          imageUrl: 'assets/icons/icons_main.png',
                          title: 'Main Course',
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: margin_Screen_Vertical,
                        bottom: margin_Screen_Vertical * 3,
                      ),
                      width: MediaQuery.of(context).size.width -
                          (margin_Screen_Horizontal * 3),
                      height: MediaQuery.of(context).size.height / 13,
                      decoration: BoxDecoration(
                        color: primary_Main,
                        borderRadius:
                            BorderRadius.circular(borderRadius_Fullsize_Button),
                      ),
                      child: Center(
                        child: Text(
                          'Apply Filter',
                          style: textstyle_Title_S.copyWith(
                            color: neutral_10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
