import 'package:flutter/material.dart';
import 'package:haus_kafein/pages/splash_screen/splash_screen3.dart';
import 'package:haus_kafein/theme.dart';

import '../menus/home_page.dart';

class Splash_Screen_2 extends StatelessWidget {
  const Splash_Screen_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_Colors,
      body: Stack(
        children: [
          // BACKGROUND IMAGE ASSET ===>
          Image.asset(
            'assets/images/images_splash_2.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.3,
            fit: BoxFit.cover,
          ),
          // GRADIENT EFFECT ===>
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.4),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.8,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  neutral_10,
                  neutral_10.withOpacity(0),
                ],
              ),
            ),
          ),
          // SKIP >> ===>
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(
                top: margin_Screen_Vertical * 3,
                right: margin_Screen_Horizontal,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => home_Page(),
                    ),
                    (Route<dynamic> route) => false,
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Skip',
                      style: textstyle_Title_S.copyWith(
                        color: neutral_10,
                      ),
                    ),
                    Image.asset(
                      'assets/icons/icons_skip.png',
                      width: 22,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // TEXT CONTENTS ===>
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: margin_Screen_Horizontal,
                      vertical: margin_Screen_Vertical * 3),
                  width: 250,
                  child: RichText(
                    text: TextSpan(
                      text: 'Berita terbaru dan acara seru untuk kamu',
                      style: textstyle_Title_CLash_Splash.copyWith(
                        color: neutral_100,
                      ),
                      children: [
                        TextSpan(
                          text: '\ncoffee enthusiast',
                          style: textstyle_Title_CLash_Splash.copyWith(
                            color: primary_Main,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Splash_Screen_3(),
                      ),
                    );
                  },
                  child: Container(
                    width: 69,
                    height: 32,
                    margin: EdgeInsets.only(
                      right: margin_Screen_Horizontal,
                      bottom: margin_Screen_Vertical * 3,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icons/icons_arrow_right.png',
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
