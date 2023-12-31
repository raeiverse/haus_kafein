import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';

class upcoming_Event_Card extends StatelessWidget {
  const upcoming_Event_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: margin_Cards_Horizontal),
      width: MediaQuery.of(context).size.width / 1.6,
      height: MediaQuery.of(context).size.height / 4.5,
      decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //     color: neutral_100.withOpacity(0.15),
          //     offset: Offset(0, 5),
          //     blurRadius: 15,
          //   ),
          // ],
          ),
      child: Padding(
        padding: EdgeInsets.all(padding_Items_Vertical),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius_Card),
              child: Image.asset(
                'assets/images/images_event_1.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: padding_Items_Vertical,
                horizontal: padding_Items_Horizontal,
              ),
              width: MediaQuery.of(context).size.width / 1.77 / 7,
              height: MediaQuery.of(context).size.height / 6 / 3,
              decoration: BoxDecoration(
                color: primary_Main,
                borderRadius: BorderRadius.circular(borderRadius_Card),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '13',
                    style: textstyle_Caption_Medium.copyWith(
                      color: neutral_10,
                    ),
                  ),
                  Text(
                    'December'.substring(0, 3),
                    style: textstyle_Caption_Medium.copyWith(
                      color: neutral_10,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 6 / 1.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(borderRadius_Card),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: padding_Items_Horizontal,
                  vertical: padding_Items_Vertical,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 6 / 2.25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ngopi Bareng Kopi Sore',
                      style: textstyle_Headline_Head.copyWith(
                        color: neutral_10,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4),
                    Expanded(
                      child: Text(
                        'Cafe bergaya modern industrial di kawasan Batu, mempertemukan modernitas dengan alam. Selain kopi, cafe ini juga menyediakan tanaman hias dan pemandangan yang indah',
                        style: textstyle_Caption_Regular.copyWith(
                          color: neutral_10,
                        ),
                      ),
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
