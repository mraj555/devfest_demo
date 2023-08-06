import 'package:devfest_demo/screens/splash_screen.dart';
import 'package:devfest_demo/utils/preferences_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferencesUtils.init();

  ///Status Bar Color
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  ///Orientation Of App
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Google Devfest",
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    ),
  );
}
