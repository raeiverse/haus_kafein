import 'package:flutter/material.dart';

import '../../theme.dart';

class liniear_Background_Image extends StatelessWidget {
  const liniear_Background_Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/images_cafe_background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4.9,
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
      ],
    );
  }
}
