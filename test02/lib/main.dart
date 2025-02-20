import 'package:flutter/material.dart';
import 'package:test02/TaskCard.dart';

import 'FilterButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskScreen(),
    );
  }
}

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf3f5f4),
      appBar: AppBar(
        actions: [
          Container(
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
                  "Add ",
                ),
              ],
            ),
          )
        ],
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("Today Tasks"),
        centerTitle: true,
        backgroundColor: Colors.white,
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
                FilterButton(text: "Future"),
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
