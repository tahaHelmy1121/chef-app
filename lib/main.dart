import 'package:chef_app/app/routes/app_router/app_router.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/core/helper/di/dependincy_injection.dart';
import 'package:chef_app/core/local_cubit/global_cubit.dart';
import 'package:chef_app/features/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServicesLocator();
  await di<CacheHelper>().init();
  runApp(
      BlocProvider(
    create: (context) => di<GlobalCubit>(),
    child: App(

    ),
  ));
}


