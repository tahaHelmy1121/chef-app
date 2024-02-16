import 'package:chef_app/app/locale/app_locale.dart';
import 'package:chef_app/core/local_cubit/global_cubit.dart';
import 'package:chef_app/core/local_cubit/global_state.dart';
import 'package:chef_app/features/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/routes/app_router/app_router.dart';
import 'features/change_local/change_local.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => BlocBuilder<GlobalCubit, GlobalState>(
        builder: (context, state) {
          return MaterialApp(
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                AppLocalizations.delegate
              ],
              supportedLocales: const [
                Locale('ar', "EG"),
                Locale('en', "US"),
              ],
              locale:  Locale(BlocProvider.of<GlobalCubit>(context).langCode),
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.changeLac,
              onGenerateRoute: AppRoter.onGenerateRoute,
              title: 'Flutter Demo');

        },
      ),
    );
  }
}
