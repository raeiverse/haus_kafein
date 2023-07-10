import 'package:flutter/material.dart';
import 'package:haus_kafein/pages/widgets/custom_navbar.dart';
import 'package:haus_kafein/pages/widgets/floating_search.dart';
import 'package:haus_kafein/pages/widgets/news_card.dart';
import 'package:haus_kafein/pages/widgets/todays_card.dart';
import 'package:haus_kafein/pages/widgets/upcoming_card.dart';
import 'package:haus_kafein/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';

class home_Page extends StatefulWidget {
  home_Page({super.key});

  @override
  State<home_Page> createState() => _home_PageState();
}

class _home_PageState extends State<home_Page> {
  // LIST IMAGES DATA ===>
  final List<Widget> imgList = [
    todays_Card(),
    todays_Card(),
    todays_Card(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_Colors,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // HELLO AND CITY ===>
          Container(
            margin: EdgeInsets.symmetric(
              vertical: margin_Screen_Vertical,
              horizontal: margin_Screen_Horizontal,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Hello,',
                      style: textstyle_Title_CLash_L.copyWith(
                        color: neutral_100,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Guest',
                      style: textstyle_Title_CLash_L.copyWith(
                        color: neutral_100,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Mau minum kopi dimana hari ini?',
                      style: textstyle_Body_Regular.copyWith(
                        color: neutral_100,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Dropdown OTW',
                      style: textstyle_Body_Regular.copyWith(
                        color: neutral_100,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // TODAYS AND CAROUSELS SLIDESHOW ===>
          Container(
            margin: EdgeInsets.only(
              top: margin_Cards_Vertical,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: margin_Screen_Horizontal),
                  child: Row(
                    children: [
                      Text(
                        "Today's",
                        style: textstyle_Title_CLash_L.copyWith(
                          color: neutral_100,
                        ),
                      ),
                      SizedBox(width: 4),
                      Image.asset(
                        'assets/icons/icons_fire.png',
                        width: 24,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: margin_Cards_Vertical),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.4,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      initialPage: 0,
                      height: MediaQuery.of(context).size.height,
                      enlargeCenterPage: true,
                      viewportFraction: 0.6,
                      enableInfiniteScroll: false,
                    ),
                    items: imgList,
                  ),
                ),
              ],
            ),
          ),
          // UPCOMING EVENT AND LIST SLIDESHOW ===>
          Container(
            margin: EdgeInsets.only(top: margin_Cards_Vertical),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: margin_Screen_Horizontal),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Upcoming Event",
                        style: textstyle_Title_CLash_L.copyWith(
                          color: neutral_100,
                        ),
                      ),
                      SizedBox(width: 4),
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
                SizedBox(height: margin_Cards_Vertical),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(right: margin_Screen_Horizontal),
                    // height: MediaQuery.of(context).size.height / 6,
                    child: Row(
                      children: [
                        upcoming_Event_Card(),
                        upcoming_Event_Card(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // NEWS AND LIST SLIDESHOW ===>
          Container(
            margin: EdgeInsets.only(top: margin_Cards_Vertical),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: margin_Screen_Horizontal),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "News",
                        style: textstyle_Title_CLash_L.copyWith(
                          color: neutral_100,
                        ),
                      ),
                      SizedBox(width: 4),
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
                SizedBox(height: margin_Cards_Vertical),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: margin_Screen_Horizontal),
                  child: Column(
                    children: [
                      news_Card(),
                    ],
                  ),
                ),
                SizedBox(height: 8 * margin_Screen_Vertical),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          floating_Search_Button(),
          custom_Navbar(
            isHome: true,
            isCafe: false,
            isMagazine: false,
            isRecipe: false,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
