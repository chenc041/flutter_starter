import 'package:flutter_starter/setting/index.dart';
import 'package:get/get.dart';
import 'package:flutter_starter/home/index.dart';

class AppPage {
  static final routes = [
    GetPage(name: '/', page: () => const HomePage()),
    GetPage(name: '/setting', page: () => const SettingPage()),
  ];
}
