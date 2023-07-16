import 'package:flutter/material.dart';
import 'package:haus_kafein/pages/widgets/back_Button.dart';
import 'package:haus_kafein/pages/widgets/liniear_Background_Images.dart';
import 'package:haus_kafein/pages/widgets/news_card.dart';
import 'package:haus_kafein/pages/widgets/team_review_card.dart';
import 'package:haus_kafein/pages/widgets/upcoming_card.dart';
import 'package:haus_kafein/theme.dart';

import '../widgets/custom_navbar.dart';

class magazine_Page extends StatelessWidget {
  const magazine_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_Colors,
      body: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            children: [
              liniear_Background_Image(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: margin_Screen_Vertical * 2),
                  back_Button(),
                  // TEAM REVIEW SECTION ===>
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
                  Container(
                    height: MediaQuery.of(context).size.height / 3.2,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding:
                            EdgeInsets.only(right: margin_Screen_Horizontal),
                        child: Row(
                          children: [
                            team_Review_Card(),
                            team_Review_Card(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // BARISTA STORIES SECTION ===>
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2 * margin_Cards_Vertical,
                      left: margin_Screen_Horizontal,
                      right: margin_Screen_Horizontal,
                      bottom: margin_Cards_Vertical,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Team Review",
                          style: textstyle_Title_CLash_L.copyWith(
                            color: neutral_100,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "see more",
                              style: textstyle_Body_Regular.copyWith(
                                color: primary_Main,
                              ),
                            ),
                            SizedBox(width: 2),
                            Image.asset(
                              'assets/icons/icons_arrow_right.png',
                              width: 20,
                              height: 20,
                              color: primary_Main,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: margin_Screen_Horizontal),
                    child: Column(
                      children: [
                        news_Card(),
                        news_Card(),
                        news_Card(),
                      ],
                    ),
                  ),
                  // UPCOMING EVENT SECTION ===>
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2 * margin_Cards_Vertical,
                      left: margin_Screen_Horizontal,
                      right: margin_Screen_Horizontal,
                      bottom: margin_Cards_Vertical,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Upcoming Event",
                          style: textstyle_Title_CLash_L.copyWith(
                            color: neutral_100,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/magazine_Event_Page');
                          },
                          child: Row(
                            children: [
                              Text(
                                "see more",
                                style: textstyle_Body_Regular.copyWith(
                                  color: primary_Main,
                                ),
                              ),
                              SizedBox(width: 2),
                              Image.asset(
                                'assets/icons/icons_arrow_right.png',
                                width: 20,
                                height: 20,
                                color: primary_Main,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        upcoming_Event_Card(),
                        upcoming_Event_Card(),
                      ],
                    ),
                  ),
                  // NEWS SECTION ===>
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2 * margin_Cards_Vertical,
                      left: margin_Screen_Horizontal,
                      right: margin_Screen_Horizontal,
                      bottom: margin_Cards_Vertical,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "News",
                          style: textstyle_Title_CLash_L.copyWith(
                            color: neutral_100,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/magazine_News_Page');
                          },
                          child: Row(
                            children: [
                              Text(
                                "see more",
                                style: textstyle_Body_Regular.copyWith(
                                  color: primary_Main,
                                ),
                              ),
                              SizedBox(width: 2),
                              Image.asset(
                                'assets/icons/icons_arrow_right.png',
                                width: 20,
                                height: 20,
                                color: primary_Main,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: margin_Screen_Horizontal,
                      right: margin_Screen_Horizontal,
                      bottom: margin_Screen_Vertical * 5,
                    ),
                    child: Column(
                      children: [
                        news_Card(),
                        news_Card(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
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
