import 'package:blue_bank/src/feature/onboarding/view_models/onboarding_bloc.dart';
import 'package:blue_bank/src/route.dart';
import 'package:blue_bank/src/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => OnboardingBloc(),
          ),
        ],
        child: ScreenUtilInit(
          designSize: const Size(390, 844),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            final appRouter = AppRouter();
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Blue Bank',
              theme: ThemeData(
                scaffoldBackgroundColor: AppStyle.backGroundColor,
                colorScheme: ColorScheme.fromSeed(
                  seedColor: AppStyle.primaryBlue,
                  primary: AppStyle.primaryBlue,
                ),
                useMaterial3: true,
              ),
              routerConfig: appRouter.config(),
            );
          },
        ));
  }
}
