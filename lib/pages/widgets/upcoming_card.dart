import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';

class upcoming_Event_Card extends StatelessWidget {
  const upcoming_Event_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: margin_Screen_Horizontal),
      width: MediaQuery.of(context).size.width / 1.77,
      height: MediaQuery.of(context).size.height / 6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius_Card),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/images_event_1.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Container(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 6 / 2.25,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: neutral_100.withOpacity(0.6),
                      blurRadius: 7,
                      // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
