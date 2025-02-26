import 'package:flutter/material.dart';
import 'package:test02/App_Assets.dart';

class DropdownOption extends StatefulWidget {
  const DropdownOption({super.key});

  @override
  State<DropdownOption> createState() => _DropdownOptionState();
}

class _DropdownOptionState extends State<DropdownOption> {
  String selectedOption = "Selected Option";

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            isExpanded: true,
            value: selectedOption,
            dropdownColor: Colors.white,
            items: options.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('assets/photo/plastien.png'),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello!',
                          style: TextStyle(
                            fontFamily: AppAssets.font,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          value,
                          style: TextStyle(
                            fontFamily: AppAssets.font,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedOption = newValue!;
              });
            },
            menuMaxHeight: 300,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}

List<String> options = [
  "Selected Option",
  "options1",
  "options2",
  "options3",
  "options4"
];
