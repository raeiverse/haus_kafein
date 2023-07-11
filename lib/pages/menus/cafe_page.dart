import 'package:flutter/material.dart';
import 'package:haus_kafein/pages/widgets/back_Button.dart';
import 'package:haus_kafein/pages/widgets/cafe_card.dart';
import 'package:haus_kafein/pages/widgets/custom_navbar.dart';
import 'package:haus_kafein/pages/widgets/floating_filter.dart';
import 'package:haus_kafein/pages/widgets/liniear_Background_Images.dart';
import 'package:haus_kafein/theme.dart';

class cafe_Page extends StatelessWidget {
  const cafe_Page({super.key});

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
                      "Popular Cafe",
                      style: textstyle_Title_CLash_L.copyWith(
                        color: neutral_100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: margin_Screen_Horizontal),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // SEARCHING INPUT ===>
                        Container(
                          width: MediaQuery.of(context).size.width / 1.7,
                          height: MediaQuery.of(context).size.height / 22,
                          decoration: BoxDecoration(
                            color: neutral_10,
                            borderRadius: BorderRadius.circular(
                              borderRadius_Fullsize_Button,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: neutral_100.withOpacity(0.15),
                                offset: Offset(0, 5),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(padding_Items_Vertical),
                                child: Image.asset(
                                  'assets/icons/icons_search.png',
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: margin_Items_Horizontal / 4,
                                  bottom: margin_Items_Vertical / 3,
                                ),
                                width: MediaQuery.of(context).size.width / 2.3,
                                height: MediaQuery.of(context).size.height / 22,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search Cafe',
                                    hintStyle:
                                        textstyle_Caption_Regular.copyWith(
                                      color: neutral_70,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        // SizedBox(width: margin_Items_Horizontal),
                        // DROPDOWN SORT ===>
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          height: MediaQuery.of(context).size.height / 22,
                          decoration: BoxDecoration(
                            color: primary_Main,
                            borderRadius: BorderRadius.circular(
                              borderRadius_Fullsize_Button,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: neutral_100.withOpacity(0.15),
                                offset: Offset(0, 5),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: padding_Items_Horizontal,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Sort by',
                                  style: textstyle_Body_Medium.copyWith(
                                    color: neutral_10,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: padding_Items_Vertical - 2,
                                  ),
                                  child: Image.asset(
                                    'assets/icons/icons_sort.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // CAFE LIST ===>
                  Center(
                    child: Column(
                      children: [
                        cafe_Card(
                          imageUrl: 'assets/images/images_place_1.png',
                          title: 'Rivarno Kopi',
                          desc: 'Coffee, non coffee, non milk, tea based',
                          rating: 4.8,
                          location: 8,
                          open: 11.00,
                          close: 23.00,
                        ),
                        cafe_Card(
                          imageUrl: 'assets/images/images_place_2.png',
                          title: 'Cordoneirre',
                          desc: 'Milk and non milk based',
                          rating: 4.8,
                          location: 8,
                          open: 11.00,
                          close: 23.00,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: margin_Screen_Vertical * 9),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          floating_Filter_Button(),
          custom_Navbar(
            isHome: false,
            isCafe: true,
            isMagazine: false,
            isRecipe: false,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
