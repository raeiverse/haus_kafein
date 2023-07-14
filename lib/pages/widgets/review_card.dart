import 'package:flutter/material.dart';

import '../../theme.dart';

class review_Card extends StatelessWidget {
  const review_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: margin_Screen_Horizontal,
      ),
      height: MediaQuery.of(context).size.height / 9.1,
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
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: margin_Items_Vertical,
          horizontal: margin_Items_Horizontal,
        ),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 6.5,
              height: MediaQuery.of(context).size.height / 14,
              decoration: BoxDecoration(
                color: primary_Main,
                borderRadius: BorderRadius.circular(borderRadius_Card),
              ),
            ),
            SizedBox(width: margin_Items_Horizontal),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'A Review: Ancala Coffee & Bistro',
                    style: textstyle_Headline_Head.copyWith(
                      color: neutral_100,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: margin_Items_Vertical / 2),
                  Expanded(
                    child: Text(
                      'Description container, where you can spoil about the review',
                      style: textstyle_Body_Regular.copyWith(
                        color: neutral_100,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
