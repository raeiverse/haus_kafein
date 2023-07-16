import 'package:flutter/material.dart';
import 'package:haus_kafein/pages/widgets/article_event_card.dart';
import 'package:haus_kafein/pages/widgets/back_Button.dart';
import 'package:haus_kafein/pages/widgets/liniear_Background_Images.dart';
import 'package:haus_kafein/theme.dart';

class magazine_Event_Article_Page extends StatelessWidget {
  const magazine_Event_Article_Page({super.key});

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
                  SizedBox(height: margin_Screen_Vertical * 2),
                  article_Event_Card(),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
