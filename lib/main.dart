import 'package:banknote/src/app/providers/app_provider.dart';
import 'package:banknote/src/app/providers/auth_provider.dart';
import 'package:banknote/src/presentation/welcome_page/splash_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/languages',
      fallbackLocale: const Locale('en'),
      useOnlyLangCode: true,
      startLocale: const Locale('en'),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<AppProvider>(
            create: (_) => AppProvider(),
          ),
          ChangeNotifierProvider<AuthProvider>(
            create: (_) => AuthProvider(),
          ),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashPage());
  }
}

//  DevicePreview(
//       enabled: true,
//       isToolbarVisible: true,
//       defaultDevice: DevicePreview.defaultDevices.firstWhere(
//         (device) => device.name == "Small",
//       ),
//       
//       tools: const [
//         ...DevicePreview.defaultTools,
//       ],
//       builder: (_) => const