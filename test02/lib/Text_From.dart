import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:test02/main.dart';

import 'App_Assets.dart';
import 'App_color.dart';

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
                  _buildTaskInfo(
                    Image.asset(
                      'assets/photo/Vector.png',
                      width: 35,
                      height: 35,
                    ),
                    'Task Group',
                    'Home',
                  ),
                  const SizedBox(height: 10),
                  _buildTaskInfo(
                    SizedBox.shrink(),
                    'Task Name',
                    'Grocery Shopping App',
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Color(0xFF6E6A7C)),
                      labelText: 'Description',
                      hintText: 'Enter task Description',
                      hintStyle: TextStyle(color: Color(0xFF24252C)),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      );
                      if (pickedDate != null) {
                        setState(() {
                          selectedDate = pickedDate;
                        });
                      }
                    },
                    child: Container(
                      width: 331,
                      height: 63,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(AppAssets.calender),
                          SizedBox(width: 10), // مسافة بين الأيقونة والنص
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Star Date",
                                style: TextStyle(
                                  fontFamily: AppAssets.font,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "${selectedDate != null ? DateFormat('dd MMM, yyyy  hh:mm a').format(selectedDate!) : 'Select date'}",
                                style: TextStyle(
                                  fontFamily: AppAssets.font,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      );
                      if (pickedDate != null) {
                        setState(() {
                          selectedDate = pickedDate;
                        });
                      }
                    },
                    child: Container(
                      width: 331,
                      height: 63,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(AppAssets.calender),
                          SizedBox(width: 10), // مسافة بين الأيقونة والنص
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " End Date",
                                style: TextStyle(
                                  fontFamily: AppAssets.font,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "${selectedDate != null ? DateFormat('dd MMM, yyyy  hh:mm a').format(selectedDate!) : 'Select date'}",
                                style: TextStyle(
                                  fontFamily: AppAssets.font,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
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
                        backgroundColor: Color(0xFF149954),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TaskScreen()));
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
                              builder: (context) => TaskScreen()));
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

// ويدجت لعرض تفاصيل المهمة
Widget _buildTaskInfo(Widget icon, String title, String content) {
  return Container(
    width: 331,
    height: 63,
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 5,
          spreadRadius: 1,
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontFamily: AppAssets.font,
                color: Colors.black,
                fontSize: 9,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              content,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontFamily: AppAssets.font,
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
