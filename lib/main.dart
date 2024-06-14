import 'package:geekreep/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:geekreep/theme/dark/dark_theme.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const BaseFlutter());
}

class BaseFlutter extends StatelessWidget {
  const BaseFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: Dark.appTheme,
      routerConfig: MasterNavigator.appRouter,
      title: 'GeekReep',
    );
  }
}
