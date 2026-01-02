import 'package:go_router/go_router.dart';

// Pages
import 'package:nueva_app/src/presentation/screens/screens.dart';

/// The route configuration.
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) {
        return const HomeScreen();
      },
    ),

    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) {
        return const ButtonsScreen();
      },
    ),

    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) {
        return const CardsScreen();
      },
    ),
  ],
);
