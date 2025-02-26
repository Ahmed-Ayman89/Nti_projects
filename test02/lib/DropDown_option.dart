import 'package:flutter/material.dart';

class DropdownOption extends StatefulWidget {
  const DropdownOption({super.key});

  @override
  State<DropdownOption> createState() => _DropdownOptionState();
}

class _DropdownOptionState extends State<DropdownOption> {
  String slectOptions = "Selected Option";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: DropdownButton(
            underline: SizedBox(),
            isExpanded: true,
            value: slectOptions,
            items: options.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('assets/photo/plastien.png'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(value)
                  ],
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                slectOptions = newValue!;
              });
            },
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
