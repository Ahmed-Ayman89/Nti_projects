import 'package:flutter/material.dart';
import 'package:test02/App_Assets.dart';

class OptionTile extends StatelessWidget {
  const OptionTile({
    super.key,
    required this.icon,
    required this.title,
    required this.trailing,
  });
  final Widget icon;
  final String title;
  final Widget trailing;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: icon,
        title: Text(
          title,
          style: TextStyle(fontFamily: AppAssets.font, fontSize: 14),
        ),
        trailing: trailing,
        onTap: () {},
      ),
    );
  }
}
