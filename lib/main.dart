import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'init_getx.dart';
import 'injection.dart';
import 'main_page/main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await initGetX();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'RootalliAI App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
        accentColor: Colors.blue.shade700,
      )),
      home: MainPage(),
    );
  }
}
