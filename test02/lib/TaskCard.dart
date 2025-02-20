import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String task;
  final String status;
  final Color color;

  const TaskCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.task,
      required this.status,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 1)
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 20),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: color)),
                Text(task, style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
          StatusBadge(status: status),
        ],
      ),
    );
  }
}

class StatusBadge extends StatelessWidget {
  final String status;

  const StatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    Color bgColor;
    switch (status) {
      case "Done":
        bgColor = Colors.green;
        break;
      case "Future":
        bgColor = Colors.grey;
        break;
      case "In Progress":
        bgColor = Colors.grey;
        break;
      default:
        bgColor = Colors.grey;
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(status, style: TextStyle(color: Colors.white)),
    );
  }
}
