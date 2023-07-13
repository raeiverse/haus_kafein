import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';

class filter_Card extends StatelessWidget {
  final String imageUrl;
  final String title;
  filter_Card({
    required this.imageUrl,
    required this.title,
  });

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
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(this.imageUrl),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: margin_Screen_Horizontal * 1.5,
            bottom: margin_Screen_Vertical * 2,
          ),
          child: Text(
            this.title,
            style: textstyle_Headline_Sub.copyWith(color: neutral_90),
          ),
        ),
      ],
    );
  }
}
