import 'package:get/get.dart';
import 'package:toefl/ui/auth/login/login_page.dart';
import 'package:toefl/ui/auth/register/register_page.dart';
import 'package:toefl/ui/onBoarding/on_boarding_page.dart';
import 'package:toefl/ui/navigator/navigator_page.dart';



class Routes {
  Routes._();

  static const String navigator = "/navigator";
  static const String login = "/login";
  static const String register = "/register";
  static const String onBoarding = "/onBoarding";

  static final newRoutes = <GetPage>[
    GetPage(name: navigator,page: ()=>const NavigatorPage()),
    GetPage(name: login,page: ()=>const LoginPage()),
    GetPage(name: register,page: ()=>const RegisterPage()),
    GetPage(name: onBoarding,page: ()=>const OnBoardingPage())
  ];
}