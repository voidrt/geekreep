import 'package:geekreep/interface/home/auth_check.dart';
import 'package:go_router/go_router.dart';

class MasterNavigator {
  static GoRouter appRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'Home',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
