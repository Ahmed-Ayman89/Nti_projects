import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'DropDown_option.dart';
import 'option_Tile.dart';

class DropDownItems extends StatelessWidget {
  const DropDownItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: double.infinity,
          height: 277,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/photo/plastien.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              OptionTile(
                icon: SvgPicture.asset(
                  'assets/Icon/user.svg',
                  width: 21,
                  height: 21,
                ),
                title: 'Update Profile',
                trailing: SvgPicture.asset('assets/Icon/Forarrow.svg'),
              ),
              OptionTile(
                icon: SvgPicture.asset(
                  'assets/Icon/Group.svg',
                  width: 21,
                  height: 21,
                ),
                title: 'Update Profile',
                trailing: SvgPicture.asset(
                  'assets/Icon/Forarrow.svg',
                ),
              ),
              DropdownOption()
            ],
          ),
        )
      ],
    ));
  }
}
