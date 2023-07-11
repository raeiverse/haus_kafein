import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';

class cafe_Card extends StatelessWidget {
  const cafe_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: margin_Cards_Vertical),
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.height / 3.8,
      decoration: BoxDecoration(
        color: neutral_10,
        borderRadius: BorderRadius.circular(borderRadius_Card),
        boxShadow: [
          BoxShadow(
            color: neutral_100.withOpacity(0.15),
            offset: Offset(0, 5),
            blurRadius: 15,
          ),
        ],
      ),
      child: Text('data'),
    );
  }
}
