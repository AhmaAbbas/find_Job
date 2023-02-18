import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/Career/presentation/views/career_view.dart';
import '../../features/CreateAccount/presentation/views/login.dart';
import '../../features/CreateAccount/presentation/views/register.dart';
import '../../features/Splach_onboarding/presentation/views/onboarding.dart';
class AppRouters{
  static String Kregister="/register";
  static String klogin="/login";
  static String kchoosecareer="/choosecareer";
  static final GoRouter router=GoRouter(
    routes: [
      GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>  Career_view()),
      GoRoute(
          path: Kregister,
          builder: (BuildContext context, GoRouterState state) => Register()),
      GoRoute(
          path: klogin,
          builder: (BuildContext context, GoRouterState state) => const Log_in()),
      GoRoute(
        path:kchoosecareer ,
        builder: (BuildContext context,GoRouterState state) =>  Career_view(),
      ),
    ]
  );
}