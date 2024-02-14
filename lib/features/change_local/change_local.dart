import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangeLocale extends StatefulWidget {
  const ChangeLocale({super.key});

  @override
  State<ChangeLocale> createState() => _ChangeLocaleState();
}

class _ChangeLocaleState extends State<ChangeLocale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Container(
            width: double.maxFinite,
            child: Image.asset(
              "assets/images/1.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 90.h),
            alignment: Alignment.topCenter,
            child: SizedBox(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage(
                      'assets/images/image 47.png',
                    ),
                  ),
                  SizedBox(
                    child: Text("Welcome to Chef App",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                            fontSize: 28.sp, fontWeight: FontWeight.w700)),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25.w, right: 22.w),
                    child: SizedBox(
                      child: Text("Please choose your language ",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              fontSize: 20.sp, fontWeight: FontWeight.w400)),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Center(
                            child: Text(
                          "English",
                          style: GoogleFonts.poppins(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        margin: EdgeInsets.only(left: 14.w, top: 80.h),
                        width: 140.w,
                        height: 48.h,
                      ),
                      Container(
                        child: Center(
                            child: Text(
                          "العربية",
                          style: GoogleFonts.poppins(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        margin: EdgeInsets.only(left: 50.w, top: 80.h),
                        width: 140.w,
                        height: 48.h,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
