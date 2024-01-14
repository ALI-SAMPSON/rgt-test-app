import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_app/src/routes/routes.dart';
import 'package:flutter_test_app/src/utils/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            title: 'RGT Test App',
            //title: AppLocalizations.of(context)!.appName,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            theme: TAppTheme.lightTheme,
            darkTheme: TAppTheme.darkTheme,
            themeMode: ThemeMode.system,
            initialRoute: Routes.splashRoute,
            onGenerateRoute: RouteGenerator.getRoute,
            scrollBehavior: const CupertinoScrollBehavior(),
            //home: TDashboardPage(),
          );
        });
  }
}
