import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';

class menu_Card extends StatelessWidget {
  const menu_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: margin_Items_Horizontal,
        vertical: margin_Items_Vertical / 2,
      ),
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width / 1.14,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: margin_Items_Horizontal),
            width: MediaQuery.of(context).size.width / 3.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius_Card),
              image: DecorationImage(
                image: AssetImage('assets/images/menu_cappucino.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: margin_Items_Vertical / 3),
            width: MediaQuery.of(context).size.width / 2.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cappucino',
                      style: textstyle_Headline_Sub.copyWith(
                        color: neutral_90,
                      ),
                    ),
                    SizedBox(height: margin_Items_Vertical / 2),
                    Text(
                      'CappucinoCappucinoCappucinoCappucinoCappucinoCappucinoCappucino',
                      style: textstyle_Caption_Regular.copyWith(
                        color: neutral_70,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Text(
                  'Rp18.000,00',
                  style: textstyle_Body_Regular.copyWith(
                    color: primary_Main,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
