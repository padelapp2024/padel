
import 'package:padel/src/config/router/route_type.dart';
import 'package:padel/src/presentation/view/global/login_wiew.dart';
import 'package:padel/src/presentation/view/global/onboarnig_view.dart';
import 'package:padel/src/presentation/view/global/register_view.dart';
import 'package:padel/src/presentation/view/global/splash_view.dart';
import 'package:padel/src/utils/constants/string.dart';

Map<String, RouteType> authRoutes = {
  AppRoutes.splash: (context, settings) => const SplashView(),
  AppRoutes.onboarning: (context, settings) => const OnboardingView(),
  AppRoutes.login: (context, settings) => const LoginView(),
  AppRoutes.register : (context, settings) => const RegisterView(),
};