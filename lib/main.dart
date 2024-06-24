import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geekreep/core/provider/app_theme_provider.dart';
import 'package:geekreep/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:geekreep/theme/dark/dark_theme.dart';
import 'package:geekreep/theme/light/light_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const ProviderScope(child: BaseFlutter()));
}

class BaseFlutter extends ConsumerWidget {
  const BaseFlutter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkThemeEnabled = ref.watch(appThemeProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: isDarkThemeEnabled ? Dark.appTheme : Light.appTheme,
      routerConfig: MasterNavigator.appRouter,
      title: 'GeekReep',
    );
  }
}
