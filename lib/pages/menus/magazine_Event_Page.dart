import 'package:flutter/material.dart';
import 'package:haus_kafein/pages/widgets/back_Button.dart';
import 'package:haus_kafein/pages/widgets/liniear_Background_Images.dart';
import 'package:haus_kafein/pages/widgets/magazine_card.dart';
import 'package:haus_kafein/theme.dart';

class magazine_Event_Page extends StatelessWidget {
  const magazine_Event_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_Colors,
      body: Stack(
        children: [
          liniear_Background_Image(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: margin_Screen_Vertical * 2),
              back_Button(),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: margin_Screen_Horizontal),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Events',
                      style: textstyle_Title_CLash_M.copyWith(
                        color: neutral_100,
                      ),
                    ),
                    Text(
                      'iki dropdown',
                      style: textstyle_Title_CLash_M.copyWith(
                        color: neutral_100,
                      ),
                    ),
                  ],
                ),
              ),
              magazine_Card(),
            ],
          ),
        ],
      ),
    );
  }
}
