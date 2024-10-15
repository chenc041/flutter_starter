import 'package:go_router/go_router.dart';
import 'package:flutter_starter/home/index.dart';

/// 初始路由
const initRoute = '/';

/// 首页路由
const homePage = initRoute;

/// 定义 路由配置
final routerConfig = GoRouter(
  routes: [
    GoRoute(
      path: homePage,
      builder: (context, state) => const HomePage()
    )
  ]
);