import 'package:go_router/go_router.dart';
import 'Screens/welcome_screen.dart';
import 'Screens/login_screen.dart';
import 'Screens/register_screen.dart';
import 'Screens/home_screen.dart';
import 'Screens/basketball_counter_screen.dart';

abstract class AppRouter {
  static const String kLoginScreen = 'login';
  static const String kRegisterScreen = 'register';
  static const String kHomeScreen = 'home';
  static const String kBasketballCounter = 'basketball';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomeScreen(),
        routes: <RouteBase>[
          GoRoute(
            path: kLoginScreen,
            name: kLoginScreen,
            builder: (context, state) => const LoginScreen(),
          ),
          GoRoute(
            path: kRegisterScreen,
            name: kRegisterScreen,
            builder: (context, state) => const RegisterScreen(),
          ),
          GoRoute(
            path: kHomeScreen,
            name: kHomeScreen,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: kBasketballCounter,
            name: kBasketballCounter,
            builder: (context, state) => const BasketballCounterScreen(),
          ),
        ],
      ),
    ],
  );
}
