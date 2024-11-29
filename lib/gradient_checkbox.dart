import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testproject/colors.dart';

class CustomGradientCheckbox extends StatelessWidget {
  final bool isChecked;

  const CustomGradientCheckbox({required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        gradient: isChecked
            ? LinearGradient(
          colors: [customPurple, Color.fromRGBO(186, 186, 215, 1)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        )
            : null,
        color: isChecked ? null : Colors.grey[300],
        border: Border.all(
          color: isChecked ? Colors.transparent : Colors.white,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: isChecked
          ? Icon(
        Icons.check,
        color: Colors.white,
        size: 20,
      )
          : null,
    );
  }
}