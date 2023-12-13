import 'package:bookly/core/uitls/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/models/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/models/repo/home_repo_implement.dart';
import '../../features/home/presentation/manger/similer_books_cubit/simeller_books_cubit.dart';
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
        builder: (context, state) => BlocProvider(
            create: (context) => SimellerBooksCubit(
              homeRepo:  getIt.get<HomeRepoImplement>(),   ),
            child: BookDetailsView(bookModel: state.extra as BookModel,)),
      ),
      GoRoute(
        path: '/SearchView',
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
