import 'package:flutter_clean_architecture/presentation/pages/pages.dart';
import 'package:flutter_clean_architecture/routes/route_name.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        name: Routes.home,
        builder: (context, state) => const MainPage(),
        routes: [
          GoRoute(
            path: 'login',
            name: Routes.login,
            builder: (context, state) => const LoginPage(),
          ),
          GoRoute(
            path: 'search',
            name: Routes.search,
            builder: (context, state) => const SearchPage(),
          ),
        ]),
  ],
  redirect: (context, state) {},
  errorBuilder: (context, state) => const ErrorPage(),
);
