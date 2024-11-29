import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Gradient gradient;

  const GradientButton({
    required this.text,
    required this.onPressed,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
        padding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
      ),
      onPressed: onPressed,
      child: Ink(
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15.h,),
          alignment: Alignment.center,
          child: Text(
            text,
            style: GoogleFonts.montserratAlternates(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}