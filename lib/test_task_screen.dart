import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testproject/colors.dart';
import 'package:testproject/gradient_border_painter.dart';
import 'package:testproject/gradient_button.dart';
import 'package:testproject/gradient_checkbox.dart';

class TestTaskScreen extends StatelessWidget {
  const TestTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 30.h),
              child: Image.asset('assets/leftbackground.png'),
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: 50.h),
              child: Image.asset('assets/rightbackground.png'),
            ),
          ),
          Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w, top: 70.h),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_back_ios, color: Color.fromRGBO(255, 255, 255, 0.4),)),
                  )),
              Text('Выберите подписку', style: GoogleFonts.montserratAlternates(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500
              )),
              SizedBox(
                height: 60.h,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 0.1),
                  borderRadius: BorderRadius.circular(30.r)
                ),
                margin: EdgeInsets.symmetric(horizontal: 35.w),
                padding: EdgeInsets.only(top: 25.h, bottom: 60.h, left: 20.w, right: 20.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: 2,
                      child: Checkbox(value: false, onChanged: (value) {}, shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ), checkColor: Colors.white,
                        activeColor: Colors.white,
                        side: BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('1 месяц', style: GoogleFonts.montserratAlternates(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500
                          )),
                          Text('Описание', style: GoogleFonts.montserratAlternates(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500
                          ))
                        ],
                      ),
                    ),

                    Text('1000р', style: GoogleFonts.montserratAlternates(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500
                    ))
                  ],
                )
              ),

              SizedBox(
                height: 25.h,
              ),

              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 0, 0, 0.37),
                  borderRadius: BorderRadius.circular(30.r),
                  border: Border.all(
                    width: 1,
                    color: Colors.transparent,
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 35.w),
                child: CustomPaint(
                  painter: GradientBorderPainter(),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Transform.scale(
                              scale: 1.5,
                              child: CustomGradientCheckbox(isChecked: true),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('6 месяц', style: GoogleFonts.montserratAlternates(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500
                                  )),
                                  Text('Описание', style: GoogleFonts.montserratAlternates(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500
                                  ))
                                ],
                              ),
                            ),

                            Column(
                              children: [
                                Text('10 000р', style: GoogleFonts.montserratAlternates(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500
                                )),
                                Text('12000р', style: GoogleFonts.montserratAlternates(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(255, 255, 255, 0.4),
                                  decoration: TextDecoration.lineThrough,
                                )),
                              ],
                            )
                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w).copyWith(top: 40.h),
                          child: Column(
                            children: [
                              descriptionRow(),
                              descriptionRow(),
                              descriptionRow(),
                              descriptionRow(),
                              descriptionRow(),
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20.h,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.w),
                child: GradientButton(text: 'Купить', onPressed: () {}, gradient: LinearGradient(
                  colors: [customPurple, Color.fromRGBO(186, 186, 215, 1)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),),
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 27.w, right: 27.w, bottom: 37.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('terms of use', style: GoogleFonts.montserratAlternates(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(255, 255, 255, 0.5)
                        ),),
                        Text('policy privacy', style: GoogleFonts.montserratAlternates(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(255, 255, 255, 0.5)
                        ),),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(107, 102, 216, 0.1),
                            borderRadius: BorderRadius.circular(30.r)
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                            child: Text('Restore purchase', style: GoogleFonts.montserratAlternates(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 0.5)
                            ),),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget descriptionRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        children: [
          Container(
            height: 7,
            width: 7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Text('что входит', style: GoogleFonts.montserratAlternates(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500
          ),)
        ],
      ),
    );
  }
}
