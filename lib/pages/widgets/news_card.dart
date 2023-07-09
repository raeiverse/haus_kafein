import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';

class news_Card extends StatelessWidget {
  const news_Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: margin_Cards_Vertical),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 8.5,
      decoration: BoxDecoration(
        color: primary_Main.withOpacity(0.5),
        borderRadius: BorderRadius.circular(borderRadius_Card),
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3.9,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(borderRadius_Card),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/images_news_1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(padding_Items_Horizontal),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Harga Kopi Melambung Tinggi',
                  style: textstyle_Body_Medium.copyWith(
                    color: neutral_100,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Wakil Ketua Asosiasi Eksportir & Industri Kopi Indonesia (AEKI) Pranoto Soenarto menyayangkan aksi spekulan memanfaatkan lonjakan harga kopi. Pasalnya, kecurangan itu akan merugikan petani kopi yang baru saja menikmati kenaikan harga.',
                  style: textstyle_Caption_Regular.copyWith(
                    color: neutral_100,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
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
          ),
        ],
      ),
    );
  }
}
