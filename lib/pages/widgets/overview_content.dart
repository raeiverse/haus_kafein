import 'package:flutter/material.dart';
import 'package:haus_kafein/pages/widgets/review_card.dart';

import '../../theme.dart';
import 'equipment_card.dart';

class overview_Content extends StatelessWidget {
  overview_Content({super.key});

  // LIST TAGS DATA ===>
  final List<String> tagList = [
    'Wi-Fi',
    'Family Friendly',
    'Smoking Area',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // OVERVIEW SUMMARY DATA ===>
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: margin_Items_Horizontal,
            vertical: margin_Items_Vertical,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // OVERVIEW TAGLIST ===>
              Wrap(
                children: tagList.map((tag) {
                  return Container(
                    margin: EdgeInsets.only(
                      right: margin_Items_Horizontal,
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
              // OVERVIEW CONTENT ITEMS ===>
              Text(
                'Address',
                style: textstyle_Body_Regular.copyWith(
                  color: neutral_100,
                ),
              ),
              Text(
                'Jl. A Yani Timur no.XX, Tulungagung',
                style: textstyle_Body_Regular.copyWith(
                  color: neutral_80,
                ),
              ),
              SizedBox(height: margin_Items_Vertical),
              Text(
                'Open hours',
                style: textstyle_Body_Regular.copyWith(
                  color: neutral_100,
                ),
              ),
              Text(
                'Sunday 09.00 - 22.00',
                style: textstyle_Body_Regular.copyWith(
                  color: neutral_80,
                ),
              ),
              SizedBox(height: margin_Items_Vertical),
              Text(
                'Social media',
                style: textstyle_Body_Regular.copyWith(
                  color: neutral_100,
                ),
              ),
              Text(
                'instagram.com/ancalac&b',
                style: textstyle_Body_Regular.copyWith(
                  color: neutral_80,
                ),
              ),
              SizedBox(height: margin_Items_Vertical),
              Text(
                'Contact',
                style: textstyle_Body_Regular.copyWith(
                  color: neutral_100,
                ),
              ),
              Text(
                '+6281-0002-34xx',
                style: textstyle_Body_Regular.copyWith(
                  color: neutral_80,
                ),
              ),
              SizedBox(height: margin_Items_Vertical),
              Text(
                'Contact',
                style: textstyle_Body_Regular.copyWith(
                  color: neutral_100,
                ),
              ),
            ],
          ),
        ),
        // EQUIPMENT CARD VIEW ===>
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(right: margin_Items_Horizontal),
            child: Row(
              children: [
                equipment_Card(),
                equipment_Card(),
              ],
            ),
          ),
        ),
        SizedBox(height: margin_Screen_Vertical),
        review_Card(),
      ],
    );
  }
}
