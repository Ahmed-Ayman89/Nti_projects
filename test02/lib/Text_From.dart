import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test02/defult_Text.dart';
import 'package:test02/main.dart';

import 'App_Assets.dart';
import 'App_color.dart';
import 'Date_PickerField.dart';
import 'Drop_Down_items.dart';

class TextFrom extends StatefulWidget {
  const TextFrom({super.key});

  @override
  State<TextFrom> createState() => _TextFromState();
}

class _TextFromState extends State<TextFrom> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFE4312B),
              minimumSize: Size(80, 28),
            ),
            onPressed: () {},
            label: Text(
              'Delete',
              style: TextStyle(
                fontFamily: AppAssets.font,
                color: Colors.white,
                fontSize: 12.5,
              ),
            ),
            icon: SvgPicture.asset(
              AppAssets.delet,
              color: Colors.white,
              width: 16,
              height: 16.5,
            ),
          ),
        ],
        leading: IconButton(
          icon: SvgPicture.asset(
            AppAssets.arrowBack,
            width: 24,
            height: 24,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Edit Task",
          style: TextStyle(
            fontFamily: AppAssets.font,
            fontSize: 19,
            fontWeight: FontWeight.w300,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColor.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'In Progress \nBelieve you can, and you\'re halfway there.',
              style: TextStyle(
                fontFamily: AppAssets.font,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  DefultText(
                    icon: Container(
                        padding: EdgeInsets.all(8),
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFE4F2),
                            borderRadius: BorderRadius.circular(5)),
                        child: SvgPicture.asset(AppAssets.home)),
                    titel: 'Task Group',
                    content: 'Home',
                  ),
                  const SizedBox(height: 10),
                  DefultText(
                    titel: 'Task Name',
                    content: 'Grocery Shopping App',
                  ),
                  const SizedBox(height: 10),
                  DefultText(
                    titel: 'Description',
                    content: 'Enter yourDescription',
                  ),
                  const SizedBox(height: 10),
                  DatePickerField(
                    onDateSelected: (selectedDate) {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DatePickerField(
                    onDateSelected: (selectedDate) {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        minimumSize: Size(331, 52),
                        backgroundColor: Color(0xFF149954),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TaskScreen(),
                          ));
                    },
                    child: Text(
                      'Mark as Done',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: AppAssets.font,
                        fontSize: 19,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        minimumSize: Size(331, 52),
                        backgroundColor: AppColor.background,
                        side: BorderSide(color: Color(0xFF149954)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DropDownItems()));
                    },
                    child: Text(
                      'Update',
                      style: TextStyle(
                        color: Color(0xFF149954),
                        fontFamily: AppAssets.font,
                        fontSize: 19,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
