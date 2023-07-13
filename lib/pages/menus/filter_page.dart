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
      body: Stack(
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
                    padding: EdgeInsets.only(left: margin_Screen_Horizontal),
                    child: Text(
                      "Beverages",
                      style: textstyle_Title_CLash_L.copyWith(
                        color: neutral_100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: margin_Screen_Horizontal),
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
                      filter_Card(),
                      filter_Card(),
                      filter_Card(),
                      filter_Card(),
                      filter_Card(),
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
                    padding: EdgeInsets.only(left: margin_Screen_Horizontal),
                    child: Text(
                      "FOOD",
                      style: textstyle_Title_CLash_L.copyWith(
                        color: neutral_100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: margin_Screen_Horizontal),
                    child: close_Button(),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  // left: margin_Screen_Horizontal,
                  right: margin_Screen_Horizontal,
                ),
                child: Wrap(
                  children: [
                    filter_Card(),
                    filter_Card(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
