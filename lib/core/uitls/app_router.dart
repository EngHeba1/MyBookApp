import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/search/presentaion/view/search_view.dart';
import '../../features/splash/presentation/view/widgets/splash_view_body.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashViewbody(),
      ),
      GoRoute(
        path: '/HomeView',
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: '/BookDetailsView',
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(
        path: '/SearchView',
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
