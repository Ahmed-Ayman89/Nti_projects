import 'package:flutter/material.dart';

import 'App_Assets.dart';

class DefultText extends StatelessWidget {
  const DefultText({
    super.key,
    this.icon,
    required this.titel,
    required this.content,
  });
  final Widget? icon;
  final String titel;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: TextFormField(
        maxLines: null,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: icon,
          labelText: titel,
          labelStyle: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w400,
              fontFamily: AppAssets.font),
          hintText: content,
          hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w200,
              fontFamily: AppAssets.font),
        ),
      ),
    );
  }
}
