import 'package:bookly_app/core/utils/server_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/data/repo/search_repo_impl.dart';
import 'package:bookly_app/features/search/presentation/manger/featured_search_book_cubit/search_book_cubit.dart';
import 'package:bookly_app/features/search/presentation/view/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const splash = '/';
  static const searchView = '/SearchView';
  static const home = '/home';
  static const bookDetailsView = '/BookDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashViews(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchBookCubit(
            getIt.get<SearchRepoImpl>(),
          ),
          child: SearchView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
