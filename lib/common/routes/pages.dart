import 'package:get/get.dart';
import 'package:halodoc_ex/modules/home/index.dart';

class AppPages {
  // static const INITIAL = AppRoutes.INITIAL;
  // static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: '/',
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
