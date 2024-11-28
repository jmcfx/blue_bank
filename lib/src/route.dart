import 'package:auto_route/auto_route.dart';
import 'package:blue_bank/src/feature/app_launch/view/getstarted_screen.dart';
import 'package:blue_bank/src/feature/app_launch/view/splash_screen.dart';
import 'package:blue_bank/src/feature/onboarding/view/onboarding_screen.dart';
import 'package:blue_bank/src/feature/open_account/view/open_account.dart';
import 'package:blue_bank/src/feature/sign_in/view/sign_in_screen.dart';

part 'route.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(
          page: GetStartedRoute.page,
        ),
        AutoRoute(
          page: SignInRoute.page,
        ),
        AutoRoute(
          page: OnboardingRoute.page,
        ),
         AutoRoute(
          page: OpenAccountRoute.page,
        ),
        
      ];
}
