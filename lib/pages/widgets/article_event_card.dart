import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';

class article_Event_Card extends StatelessWidget {
  const article_Event_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: margin_Screen_Horizontal,
        vertical: margin_Screen_Vertical,
      ),
      width: MediaQuery.of(context).size.width,
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
        // gradient: LinearGradient(
        //   begin: Alignment(0, 0),
        //   end: Alignment(0, 1),
        //   colors: [
        //     neutral_10.withOpacity(0),
        //     neutral_10,
        //   ],
        // ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Ngopi Bareng Kopi Sore',
                style: textstyle_Title_CLash_L.copyWith(
                  color: neutral_100,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: margin_Items_Vertical * 2),
            Row(
              children: [
                Image.asset(
                  'assets/icons/icons_calendar.png',
                  width: 24,
                ),
                SizedBox(width: margin_Items_Horizontal),
                Text(
                  '17 Jan 2023',
                  style: textstyle_Body_Regular.copyWith(
                    color: neutral_90,
                  ),
                ),
              ],
            ),
            SizedBox(height: margin_Items_Vertical),
            Row(
              children: [
                Image.asset(
                  'assets/icons/icons_location.png',
                  width: 24,
                ),
                SizedBox(width: margin_Items_Horizontal),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Raos Kopi',
                      style: textstyle_Body_Regular.copyWith(
                        color: neutral_90,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Jl. A Yani Timur no.XX, Tulungagung',
                      style: textstyle_Body_Regular.copyWith(
                        color: neutral_60,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: margin_Items_Vertical),
            Row(
              children: [
                Image.asset(
                  'assets/icons/icons_time.png',
                  width: 24,
                ),
                SizedBox(width: margin_Items_Horizontal),
                Text(
                  '07.00' + ' - ' + '22.00',
                  style: textstyle_Body_Regular.copyWith(
                    color: neutral_90,
                  ),
                ),
              ],
            ),
            SizedBox(height: margin_Items_Vertical),
            Row(
              children: [
                Image.asset(
                  'assets/icons/icons_phone.png',
                  width: 24,
                ),
                SizedBox(width: margin_Items_Horizontal),
                Text(
                  '+6285-9978-XXXX',
                  style: textstyle_Body_Regular.copyWith(
                    color: neutral_90,
                  ),
                ),
              ],
            ),
            SizedBox(height: margin_Items_Vertical),
            Text(
              'Agenda',
              style: textstyle_Body_Regular.copyWith(
                color: neutral_60,
              ),
            ),
            SizedBox(height: margin_Items_Vertical),
            Text(
              'This container contain description of expert verified user who objectively leave their review for this cafe. Verified expert should fill this review at least 500 words to be accepted by system.\n\nThis container contain description of expert verified user who objectively leave their review for this cafe. Verified expert should fill this review at least 500 words to be accepted by system.This container contain description of expert verified user who objectively leave their review for this cafe.',
              style: textstyle_Body_Regular.copyWith(
                fontSize: 16,
                color: neutral_90,
              ),
            ),
            SizedBox(height: margin_Items_Vertical),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/icons/icons_twitter.png',
                  width: 24,
                ),
                SizedBox(width: margin_Items_Horizontal),
                Image.asset(
                  'assets/icons/icons_facebook.png',
                  width: 24,
                ),
                SizedBox(width: margin_Items_Horizontal),
                Image.asset(
                  'assets/icons/icons_copy_link.png',
                  width: 24,
                ),
                SizedBox(width: margin_Items_Horizontal),
              ],
            ),
            SizedBox(height: margin_Items_Vertical),
          ],
        ),
      ),
    );
  }
}
