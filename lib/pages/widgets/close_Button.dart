import 'package:flutter/material.dart';

import '../../theme.dart';

class close_Button extends StatelessWidget {
  const close_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 28,
        height: 28,
        margin: EdgeInsets.only(
          left: margin_Screen_Horizontal,
          top: margin_Screen_Vertical,
          bottom: margin_Cards_Vertical,
        ),
        decoration: BoxDecoration(
          color: neutral_10.withOpacity(0.5),
          borderRadius: BorderRadius.circular(borderRadius_Card),
          boxShadow: [
            BoxShadow(
              color: neutral_100.withOpacity(0.15),
              blurRadius: 15,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(padding_Items_Horizontal - 1),
          child: Image.asset(
            'assets/icons/icons_close.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
