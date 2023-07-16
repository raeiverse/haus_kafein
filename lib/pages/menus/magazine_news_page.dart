import 'package:flutter/material.dart';

import '../../theme.dart';
import '../widgets/back_Button.dart';
import '../widgets/liniear_Background_Images.dart';
import '../widgets/magazine_card.dart';

class magazine_News_Page extends StatelessWidget {
  const magazine_News_Page({super.key});

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
                      'News',
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
