import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';

class home_Page extends StatelessWidget {
  final List<String> imgList = [
    'assets/images/images_place_1.png',
    'assets/images/images_place_2.png',
    'assets/images/images_review_1.png',
  ];
  home_Page({super.key});

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
          Container(
            margin: EdgeInsets.only(
              top: margin_Cards_Vertical,
            ),
            child: Column(
              children: [
                // TODAYS AND CAROUSELS SLIDESHOW ===>
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
                  // width: 253,
                  height: 350,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      initialPage: 0,
                      height: 350,
                      enlargeCenterPage: true,
                      viewportFraction: 0.6,
                      enableInfiniteScroll: false,
                    ),
                    items: imgList
                        .map(
                          (item) => Container(
                            child: Center(
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
