import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';

class filter_Card extends StatelessWidget {
  const filter_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(
            left: margin_Screen_Horizontal * 1.5,
            bottom: padding_Items_Vertical,
          ),
          width: MediaQuery.of(context).size.width / 5,
          height: MediaQuery.of(context).size.height / 12,
          decoration: BoxDecoration(
            color: primary_Main,
            shape: BoxShape.circle,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: margin_Screen_Horizontal * 1.5,
            bottom: margin_Screen_Vertical * 2,
          ),
          child: Text(
            'Chocolate',
            style: textstyle_Headline_Sub.copyWith(color: neutral_90),
          ),
        ),
      ],
    );
  }
}
