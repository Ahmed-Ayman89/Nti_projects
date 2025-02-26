import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:test02/TaskCard.dart';

import 'App_Assets.dart';
import 'App_color.dart';

import 'FilterButton.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              color: Color(0xFFceefde),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.add,
                ),
                SizedBox(width: 5),
                Text(
                  "Add",
                  style: TextStyle(fontFamily: AppAssets.font),
                ),
              ],
            ),
          )
        ],
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            AppAssets.arrowBack,
            fit: BoxFit.scaleDown,
            width: 24,
            height: 24,
          ),
        ),
        title: Text(
          "Today Tasks",
          style: TextStyle(fontFamily: AppAssets.font),
        ),
        centerTitle: true,
        backgroundColor: AppColor.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterButton(text: "All", isSelected: true),
                SizedBox(width: 10),
                FilterButton(
                  text: "Future",
                ),
                SizedBox(width: 10),
                FilterButton(text: "Missed"),
                SizedBox(width: 10),
                FilterButton(text: "Done"),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Results',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      fontFamily: AppAssets.font),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFceefde),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "5",
                    style: TextStyle(color: Colors.green),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            TaskCard(
                icon: Icons.work,
                title: 'Work Task',
                task: 'Go to supermarket to buy some milk & eggs',
                status: 'Future',
                color: Colors.black),
            TaskCard(
                icon: Icons.work,
                title: 'Work Task',
                task: 'Go to supermarket to buy some milk & eggs',
                status: 'Done',
                color: Colors.black),
            TaskCard(
                icon: Icons.home,
                title: 'Home Task',
                task: 'Add new feature for Do It app and commit it',
                status: 'Done',
                color: Colors.green),
            TaskCard(
                icon: Icons.person,
                title: 'personal Task',
                task: 'Improve my English skills by trying to speak',
                status: 'In Progress',
                color: Colors.green),
            TaskCard(
                icon: Icons.home,
                title: 'Home Task',
                task: 'Add new feature for Do It app and commit it',
                status: 'Done',
                color: Colors.green),
          ],
        ),
      ),
    );
  }
}
