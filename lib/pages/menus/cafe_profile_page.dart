import 'package:flutter/material.dart';
import 'package:haus_kafein/pages/widgets/back_Button.dart';
import 'package:haus_kafein/pages/widgets/cafe_profile_card.dart';
import 'package:haus_kafein/pages/widgets/custom_navbar.dart';

import 'package:haus_kafein/pages/widgets/menu_content.dart';
import 'package:haus_kafein/pages/widgets/overview_content.dart';

import 'package:haus_kafein/theme.dart';

class cafe_Profile_Page extends StatefulWidget {
  cafe_Profile_Page({super.key});

  @override
  State<cafe_Profile_Page> createState() => _cafe_Profile_PageState();
}

class _cafe_Profile_PageState extends State<cafe_Profile_Page> {
  @override
  int isSelectedIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_Colors,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              cafe_Profile_Card(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: margin_Screen_Vertical * 2),
                  Padding(
                    padding: EdgeInsets.only(left: margin_Screen_Horizontal),
                    child: back_Button(),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 4.6,
                        bottom: margin_Screen_Vertical,
                      ),
                      child: Text(
                        'Ancala Coffee & Bistro',
                        style: textstyle_Title_CLash_M.copyWith(
                          color: neutral_100,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/icons_star.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            '4.8/5',
                            style: textstyle_Body_Regular.copyWith(
                              color: neutral_70,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/icons_direction.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            'Direction',
                            style: textstyle_Body_Regular.copyWith(
                              color: neutral_70,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/icons_grabfood.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            'Grabfood',
                            style: textstyle_Body_Regular.copyWith(
                              color: neutral_70,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/icons_dollars.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            '\$\$',
                            style: textstyle_Body_Regular.copyWith(
                              color: neutral_70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: margin_Screen_Vertical),
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: margin_Screen_Horizontal,
                      ),
                      decoration: BoxDecoration(
                        color: neutral_10,
                        borderRadius: BorderRadius.circular(borderRadius_Card),
                        boxShadow: [
                          BoxShadow(
                            color: neutral_100.withOpacity(0.15),
                            offset: Offset(0, 5),
                            blurRadius: 15,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: margin_Items_Vertical),
                          // OVERVIEW & MENU SELECT ===>
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 28,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isSelectedIndex = 0;
                                    });
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width /
                                        1.2 /
                                        2.2,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: isSelectedIndex == 0
                                              ? primary_Main
                                              : transparant_Colors,
                                          width: 1.3,
                                        ),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Overview',
                                        style: textstyle_Body_Regular.copyWith(
                                          color: isSelectedIndex == 0
                                              ? primary_Main
                                              : neutral_80,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isSelectedIndex = 1;
                                    });
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width /
                                        1.2 /
                                        2.2,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: isSelectedIndex == 1
                                              ? primary_Main
                                              : transparant_Colors,
                                          width: 1.3,
                                        ),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Menu',
                                        style: textstyle_Body_Regular.copyWith(
                                          color: isSelectedIndex == 1
                                              ? primary_Main
                                              : neutral_80,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          isSelectedIndex == 0
                              ? overview_Content()
                              : Menu_Content(),
                          SizedBox(height: margin_Screen_Vertical),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: margin_Screen_Vertical * 5),
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: custom_Navbar(
        isHome: false,
        isCafe: true,
        isMagazine: false,
        isRecipe: false,
      ),
    );
  }
}
