import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';

class todays_Card extends StatelessWidget {
  const todays_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(
          -MediaQuery.of(context).size.width / 6.8, 0, 0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: neutral_100.withOpacity(0.15),
            offset: Offset(0, 5),
            blurRadius: 15,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(padding_Items_Horizontal),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius_Card),
          child: Stack(
            children: [
              Image.asset(
                'assets/images/images_place_2.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4 / 2,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: neutral_100.withOpacity(0.6),
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Ancala Coffe & Bistro',
                              style: textstyle_Headline_Head.copyWith(
                                color: neutral_10,
                              ),
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/icons/icons_star.png',
                              width: 20,
                              height: 20,
                            ),
                            Text(
                              '4.4',
                              style: textstyle_Body_Medium.copyWith(
                                color: neutral_10,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Expanded(
                          child: Text(
                            'Cafe bergaya modern industrial di kawasan Batu, mempertemukan modernitas dengan alam. Selain kopi, cafe ini juga menyediakan tanaman hias dan pemandangan yang indah',
                            style: textstyle_Body_Regular.copyWith(
                              color: neutral_10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
