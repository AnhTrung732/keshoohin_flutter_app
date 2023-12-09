import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keshoohin_flutter_app/src/core/core_export.dart';

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

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    onStartUp();
  }

  void onStartUp() async {
    // await ref.read(storageRepositoryProvider).setLoginState(false);
    // ref.read(appStateNotifierProvider.notifier).setloginState(false);
    await ref.read(appStateNotifierProvider.notifier).onAppStart();
    // var obj1 = ref.read(dioProvider);
    // var obj2 = ref.read(dioProvider);
    // if (obj1.hashCode == obj2.hashCode) {
    //   print("I am singleton class");
    // }
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(appStateNotifierProvider);
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
