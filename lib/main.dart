import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keshoohin_flutter_app/src/services/routing/routes.dart';
import 'package:keshoohin_flutter_app/src/utils/constants/api_config.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await EasyLocalization.ensureInitialized();

  print(ApiConfig.getIdShowProduct(5).toString());

  runApp(EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('vn', 'VN')],
      path: 'assets/language', // <-- change the path of the translation files
      fallbackLocale: const Locale('en', 'US'),
      child: const ProviderScope(
        child: MyApp()
      )
    )
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(routerProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
