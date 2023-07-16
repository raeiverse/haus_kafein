import 'package:flutter/material.dart';

import '../../theme.dart';

class floating_Search_Button extends StatefulWidget {
  const floating_Search_Button({Key? key}) : super(key: key);

  @override
  _floating_Search_ButtonState createState() => _floating_Search_ButtonState();
}

class _floating_Search_ButtonState extends State<floating_Search_Button> {
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 22,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        color: transparant_Colors,
        borderRadius: BorderRadius.circular(borderRadius_Fullsize_Button),
        boxShadow: [
          BoxShadow(
            color: neutral_10.withOpacity(0.5),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(padding_Items_Horizontal / 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isActive = true;
                });
              },
              child: Container(
                transform: Matrix4.translationValues(5, 0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(borderRadius_Button),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 2.25 / 2,
                    color: isActive ? primary_Main : transparant_Colors,
                    child: Center(
                      child: Text(
                        'For you',
                        style: textstyle_Headline_Sub.copyWith(
                          color: isActive ? neutral_10 : neutral_100,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isActive = false;
                });
              },
              child: Container(
                transform: Matrix4.translationValues(-5, 0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(borderRadius_Button),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 2.25 / 2,
                    color: isActive ? transparant_Colors : primary_Main,
                    child: Center(
                      child: Text(
                        'Search',
                        style: textstyle_Headline_Sub.copyWith(
                          color: isActive ? neutral_100 : neutral_10,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
