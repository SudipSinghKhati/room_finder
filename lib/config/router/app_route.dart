import 'package:room_finder_app/fetures/auth/presentation/view/login.dart';
import 'package:room_finder_app/fetures/auth/presentation/view/register.dart';
import 'package:room_finder_app/fetures/home/presentation/view/dashboard.dart';

import 'package:room_finder_app/fetures/splash/presentation/view/splash_view.dart';

class AppRoute{
  AppRoute._();

  static const String splashRoute = '/splash';
  static const String dashboardRoute = '/home';
  static const String signInRoute = '/signIn';
  static const String singUpRoute = '/signUp';

  static getApplicationRoute(){
    return{
      splashRoute: (context) => const SplashView(),
      signInRoute: (context) => const LogIn(),
      singUpRoute:(context) => const Register(),
      dashboardRoute: (context) => const DashBoard(),
    };
  }



}