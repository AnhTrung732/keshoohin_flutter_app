import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/common/utils/app_styles.dart';
import 'package:keshoohin_flutter_app/src/common/global/app_init.dart';
import 'package:keshoohin_flutter_app/src/services/routing/app_routes.dart';
import 'package:keshoohin_flutter_app/src/common/utils/constants/api_config.dart';

Future<void> main() async {
  await AppInit.init();

  print(ApiConfig.getIdShowProduct(5).toString());
  //print(ApiConfig.postLogin().toString());

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('vn', 'VN')],
      path: 'assets/language', // <-- change the path of the translation files
      fallbackLocale: const Locale('en', 'US'),
      child: const ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(appRouterProvider).router;
    return ScreenUtilInit(
        designSize: const Size(375, 812), //375, 812
        builder: (context, child) => MaterialApp.router(
              routerConfig: goRouter,
              theme: lightTheme,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
            ));
  }
}
