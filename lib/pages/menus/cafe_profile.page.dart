import 'package:flutter/material.dart';
import 'package:haus_kafein/pages/widgets/blur_background.dart';
import 'package:haus_kafein/theme.dart';

class cafe_Profile_Page extends StatelessWidget {
  const cafe_Profile_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_Colors,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              blur_Background(),
            ],
          ),
        ],
      ),
    );
  }
}
