import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';

class equipment_Card extends StatelessWidget {
  const equipment_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: margin_Items_Horizontal),
          width: MediaQuery.of(context).size.width / 1.7,
          height: MediaQuery.of(context).size.height / 6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius_Card),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/images_equipment_1.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: margin_Items_Vertical / 2),
        Text(
          'La Nuova Era-Arpa 2',
          style: textstyle_Caption_Regular.copyWith(
            color: neutral_80,
          ),
        ),
      ],
    );
  }
}
