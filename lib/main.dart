import 'package:chef_app/app/routes/app_router/app_router.dart';
import 'package:chef_app/features/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        initialRoute: Routes.changeLac,
        onGenerateRoute: AppRoter.onGenerateRoute,
        debugShowCheckedModeBanner: false,
        //  home: SplashView(),
      ),
    );
  }
}
