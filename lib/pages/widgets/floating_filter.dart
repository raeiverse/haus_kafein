import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';

class floating_Filter_Button extends StatelessWidget {
  const floating_Filter_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/filter_Page');
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 18,
        width: MediaQuery.of(context).size.width / 4,
        decoration: BoxDecoration(
          color: neutral_10,
          borderRadius: BorderRadius.circular(borderRadius_Fullsize_Button),
          boxShadow: [
            BoxShadow(
              color: neutral_100.withOpacity(0.15),
              offset: Offset(0, 5),
              blurRadius: 15,
            ),
          ],
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/icons_filter.png',
                width: 18,
                height: 12,
              ),
              SizedBox(width: padding_Items_Horizontal),
              Text(
                'Filter',
                style: textstyle_Body_Medium.copyWith(
                  color: neutral_80,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
