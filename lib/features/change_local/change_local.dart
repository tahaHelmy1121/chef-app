import 'package:chef_app/app/locale/app_locale.dart';
import 'package:chef_app/core/local_cubit/global_state.dart';
import 'package:chef_app/features/change_local/widget/drew_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app/app_strings.dart';
import '../../core/local_cubit/global_cubit.dart';

class ChangeLocale extends StatefulWidget {
  const ChangeLocale({super.key});

  @override
  State<ChangeLocale> createState() => _ChangeLocaleState();
}

class _ChangeLocaleState extends State<ChangeLocale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:

        SafeArea(
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
                        child: Text(AppStrings.welcomeToChefApp.tr(context),
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
                          child: Text(AppStrings.pleaseChooseYourLanguage.tr(context),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          drewButtonLocal(onPreased: (){
                            BlocProvider.of<GlobalCubit>(context)
                                .changeLang("en");
                          },text: "english", context: context),
                          drewButtonLocal(onPreased: (){
                            BlocProvider.of<GlobalCubit>(context)
                                .changeLang("ar");
                          },text: "العربية", context: context),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )

    );
  }
}
