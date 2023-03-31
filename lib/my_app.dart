import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:azl_clean_sample/router/gen_route.dart';
import 'package:azl_clean_sample/router/navigation_controller.dart';
import 'package:azl_clean_sample/util/app_global.dart' as global;
import 'package:azl_clean_sample/util/assets/app_locale.dart';

Future<void> myMain() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(EasyLocalization(
    supportedLocales: [AppLocales.en.language, AppLocales.hi.language],
    path: AppLocales.path,
    fallbackLocale: AppLocales.en.language,
    startLocale: AppLocales.en.language,
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      navigatorObservers: [global.navigationObserver],
      theme: global.them,
      onGenerateRoute: generateRoute,
      navigatorKey: NavigationController.globalNavigatorKey,
    );
  }
}
