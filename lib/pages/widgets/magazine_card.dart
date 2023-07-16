import 'package:flutter/material.dart';

import '../../theme.dart';

class magazine_Card extends StatelessWidget {
  const magazine_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/magazine_Event_Article_Page');
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3.4,
        margin: EdgeInsets.symmetric(
          horizontal: margin_Screen_Horizontal,
          vertical: margin_Cards_Vertical,
        ),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(borderRadius_Card),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/images_place_1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: padding_Items_Vertical),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: margin_Items_Horizontal,
              ),
              child: Text(
                'Ngopi Bareng Kopi Sore',
                style: textstyle_Headline_Head.copyWith(
                  color: neutral_100,
                ),
              ),
            ),
            SizedBox(height: 4),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: margin_Items_Horizontal,
              ),
              child: Text(
                'This container contain description of expert verified user who objectively leave their review for this cafe. Verified expert should fill this review at least 500 words to be accepted by system.',
                style: textstyle_Body_Regular.copyWith(
                  color: neutral_70,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: margin_Items_Horizontal,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'read more',
                    style: textstyle_Caption_Regular.copyWith(
                      color: primary_Main,
                    ),
                  ),
                  Text(
                    '17 Jan 2022',
                    style: textstyle_Caption_Regular.copyWith(
                      color: neutral_70,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: padding_Items_Vertical),
          ],
        ),
      ),
    );
  }
}
