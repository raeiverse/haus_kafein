import 'package:flutter/material.dart';
import 'package:haus_kafein/theme.dart';

class cafe_Card extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String desc;
  final double rating;
  final double location;
  final double open;
  final double close;

  cafe_Card({
    required this.imageUrl,
    required this.title,
    required this.desc,
    required this.rating,
    required this.location,
    required this.open,
    required this.close,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: margin_Cards_Vertical),
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.height / 3.5,
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
            height: MediaQuery.of(context).size.height / 6.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(
                  borderRadius_Card,
                ),
              ),
              image: DecorationImage(
                image: AssetImage(this.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(padding_Items_Vertical),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.title,
                      style: textstyle_Headline_Head.copyWith(
                        color: neutral_90,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      this.desc,
                      style: textstyle_Caption_Regular.copyWith(
                        color: neutral_70,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(padding_Items_Horizontal),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/icons_star.png',
                      width: 16,
                      height: 16,
                    ),
                    SizedBox(width: 2),
                    Text(
                      '${this.rating}',
                      style: textstyle_Caption_Medium.copyWith(
                        color: neutral_70,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: padding_Items_Horizontal),
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/icons_location.png',
                      width: 16,
                      height: 16,
                    ),
                    SizedBox(width: 2),
                    Text(
                      '${this.location}m',
                      style: textstyle_Caption_Medium.copyWith(
                        color: neutral_70,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(padding_Items_Horizontal),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/icons_time.png',
                      width: 16,
                      height: 16,
                      color: neutral_70,
                    ),
                    SizedBox(width: 2),
                    Text(
                      '${this.open}-${this.close}',
                      style: textstyle_Caption_Medium.copyWith(
                        color: neutral_70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
