import 'package:flutter/material.dart';
import 'package:haus_kafein/pages/widgets/menu_card.dart';

import '../../theme.dart';

class Menu_Content extends StatefulWidget {
  Menu_Content({super.key});

  @override
  State<Menu_Content> createState() => _Menu_ContentState();
}

class _Menu_ContentState extends State<Menu_Content> {
// LIST TAGS DATA ===>
  final List<String> tagList = [
    'All',
    'Coffee',
    'Tea based',
    'Milk based',
    'Coffee',
    'Tea based',
    'Milk based',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // OVERVIEW TAGLIST ===>
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(right: margin_Items_Horizontal),
            child: Row(
              children: tagList.map((tag) {
                return Container(
                  margin: EdgeInsets.only(
                    left: margin_Items_Horizontal,
                    top: margin_Items_Vertical,
                    bottom: margin_Items_Vertical,
                  ),
                  height: 18,
                  decoration: BoxDecoration(
                    color: neutral_30,
                    borderRadius: BorderRadius.circular(borderRadius_Card),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: padding_Items_Horizontal,
                    ),
                    child: Text(
                      tag,
                      style: textstyle_Caption_Regular.copyWith(
                        color: neutral_70,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        // TITLES PAGE ===>
        Padding(
          padding: EdgeInsets.only(
            top: margin_Items_Vertical,
            left: margin_Items_Horizontal,
            bottom: margin_Items_Vertical,
          ),
          child: Text(
            "All-time Popular",
            style: textstyle_Headline_Head.copyWith(
              color: neutral_100,
            ),
          ),
        ),
        // ALL-TIME POPULAR SECTION ===>
        menu_Card(),
        menu_Card(),
        menu_Card(),
        // MENU SECTION ===>
        Padding(
          padding: EdgeInsets.only(
            top: margin_Items_Vertical,
            left: margin_Items_Horizontal,
            bottom: margin_Items_Vertical,
          ),
          child: Text(
            "Menu",
            style: textstyle_Headline_Head.copyWith(
              color: neutral_100,
            ),
          ),
        ),
        menu_Card(),
        menu_Card(),
        menu_Card(),
      ],
    );
  }
}
