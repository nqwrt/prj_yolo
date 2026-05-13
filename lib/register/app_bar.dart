import 'package:flutter/material.dart';

class CustomAppBar {
  static AppBar build(BuildContext context, String title) {
    return AppBar(
      backgroundColor: const Color(0xFF3D4150),
      elevation: 0,

      // 왼쪽 이미지
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/img/ic_navigate_before_white_24dp.png',
          ),
        ),
      ),

      // 가운데 제목
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),

      centerTitle: true,

      // 오른쪽 이미지
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/img/ic_clear_white_24dp.png',
              width: 28,
              height: 28,
            ),
          ),
        ),
      ],
    );
  }
}