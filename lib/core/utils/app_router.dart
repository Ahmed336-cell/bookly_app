import 'package:bookly/features/home/presentaion/views/book_details_view.dart';
import 'package:bookly/features/home/presentaion/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const KHomeViewPath = '/homeView';
  static const KDetailsBookViewPath = '/detailsView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: KHomeViewPath,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: KDetailsBookViewPath,
      builder: (context, state) => const BookDetailsView(),
    ),
  ]);
}
