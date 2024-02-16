

          import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/local_cubit/global_cubit.dart';

Widget  drewButtonLocal({required BuildContext context,required Function()onPreased,text}){
  return   InkWell(
    onTap:onPreased,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.only(left: 8.w),
      width: 140.w,
      height: 48.h,
      child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          )),
    ),
  );
}