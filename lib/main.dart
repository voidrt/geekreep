import 'package:base_/core/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BaseFlutter());
}

class BaseFlutter extends StatelessWidget {
  const BaseFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: MasterNavigator.appRouter,
      title: 'Base',
    );
  }
}
