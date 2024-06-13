import 'package:geekreep/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
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
      routerConfig: MasterNavigator.appRouter,
      title: 'GeekReep',
    );
  }
}
