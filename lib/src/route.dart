import 'package:auto_route/auto_route.dart';
import 'package:blue_bank/src/feature/app_launch/view/getstarted_screen.dart';
import 'package:blue_bank/src/feature/app_launch/view/splash_screen.dart';
import 'package:blue_bank/src/feature/sign_in/view/sign_in_screen.dart';

part 'route.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(
          page: SplashRoute.page,
        ),
        AutoRoute(
          page: GetStartedRoute.page, initial:  true 
        ),
        AutoRoute(page: SignInRoute.page, )
      ];
}
