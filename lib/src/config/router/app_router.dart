import 'package:go_router/go_router.dart';

// Pages
import 'package:nueva_app/src/presentation/screens/screens.dart';

/// The route configuration.
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeScreen();
      },
    ),

    GoRoute(
      path: '/buttons',
      builder: (context, state) {
        return const ButtonsScreen();
      },
    ),

    GoRoute(
      path: '/cards',
      builder: (context, state) {
        return const CardsScreen();
      },
    ),
  ],
);
