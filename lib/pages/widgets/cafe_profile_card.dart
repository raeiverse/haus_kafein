import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class cafe_Profile_Card extends StatefulWidget {
  const cafe_Profile_Card({super.key});

  @override
  State<cafe_Profile_Card> createState() => _cafe_Profile_CardState();
}

class _cafe_Profile_CardState extends State<cafe_Profile_Card> {
  // LIST IMAGES DATA ===>
  final List<String> imgList = [
    'assets/images/images_place_1.png',
    'assets/images/images_place_2.png',
    'assets/images/images_place_1.png',
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          child: Opacity(
            opacity: 0.8,
            child: Image.asset(
              imgList[_current],
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                neutral_10.withOpacity(0),
                neutral_10,
              ],
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
          ),
        ),
        CarouselSlider(
          items: imgList
              .map(
                (e) => Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          e,
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(borderRadius_Card),
                    ),
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            initialPage: 0,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 24 : 6,
                height: 6,
                margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height / 3 / 1.3,
                  horizontal: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(borderRadius_Fullsize_Button),
                  color: neutral_10,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
