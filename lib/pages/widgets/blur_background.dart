import 'dart:ui';

import 'package:flutter/material.dart';

import '../../theme.dart';

class blur_Background extends StatelessWidget {
  const blur_Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.4,
          child: Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/images/images_place_1.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                neutral_10.withOpacity(0),
                neutral_10,
              ],
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
          ),
        ),
      ],
    );
  }
}
