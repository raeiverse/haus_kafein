import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';

class team_Review_Card extends StatelessWidget {
  const team_Review_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: margin_Screen_Horizontal),
      width: MediaQuery.of(context).size.width / 1.54,
      height: MediaQuery.of(context).size.height / 3.5,
      decoration: BoxDecoration(
        color: neutral_10,
        borderRadius: BorderRadius.circular(
          borderRadius_Card,
        ),
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
            width: MediaQuery.of(context).size.width / 1.54,
            height: MediaQuery.of(context).size.height / 3.6 / 1.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(
                    borderRadius_Card,
                  ),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/images_event_1.png'),
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: EdgeInsets.all(padding_Items_Horizontal),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.14 / 1.6,
              height: MediaQuery.of(context).size.height / 3.3 / 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'A Review: Office Coffee',
                    style: textstyle_Headline_Head.copyWith(
                      color: neutral_100,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Wakil Ketua Asosiasi Eksportir & Industri Kopi Indonesia (AEKI) Pranoto Soenarto menyayangkan aksi spekulan memanfaatkan lonjakan harga kopi. Pasalnya, kecurangan itu akan merugikan petani kopi yang baru saja menikmati kenaikan harga.',
                    style: textstyle_Body_Regular.copyWith(
                      color: neutral_70,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'read more',
                        style: textstyle_Caption_Regular.copyWith(
                          color: primary_Main,
                        ),
                      ),
                      Text(
                        '13 January 2022',
                        style: textstyle_Caption_Regular.copyWith(
                          color: neutral_60,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
