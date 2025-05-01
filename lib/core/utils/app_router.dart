import 'package:bookly/Features/Splach/presentation/view/splach_view.dart';
import 'package:bookly/Features/home/presentation/view/book_detalis_view.dart';
import 'package:bookly/Features/home/presentation/view/home_view.dart';
import 'package:bookly/Features/search/presentation/view/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplachView(),
        routes: [
          GoRoute(
            path: kHomeView,
            builder: (context, state) => const HomeView(),
          ),
          GoRoute(
            path: kBookDetailsView,
            builder: (context, state) => const BookDetalisView(),
          ),
          GoRoute(
            path: kSearchView,
            builder: (context, state) => const SearchView(),
          ),
        ],
      ),
    ],
  );
}
