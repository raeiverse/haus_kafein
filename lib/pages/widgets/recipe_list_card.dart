import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';

class recipe_List_Card extends StatelessWidget {
  const recipe_List_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: margin_Screen_Horizontal,
        bottom: margin_Cards_Vertical,
      ),
      width: MediaQuery.of(context).size.width / 2.5,
      height: MediaQuery.of(context).size.height / 3.3,
      decoration: BoxDecoration(
        color: neutral_10,
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius_Card),
        ),
        boxShadow: [
          BoxShadow(
            color: neutral_100.withOpacity(0.15),
            offset: Offset(0, 5),
            blurRadius: 15,
          ),
        ],
        image: DecorationImage(
          image: AssetImage('assets/images/images_ices_1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding_Items_Vertical),
        child: Text(
          'Coffee',
          style: textstyle_Headline_Sub.copyWith(
            color: primary_Main,
          ),
        ),
      ),
    );
  }
}
