import 'package:bjit_education/features/education/presentation/screens/onboarding/bloc/onboarding_page_one_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app_routes/business_logic/route_cubit.dart';
import 'app_routes/presentation/routes/generated_routes.dart';
import 'core/utils/navigator_service.dart';
import 'core/utils/local_storage/pref_storage.dart';
import 'core/utils/theme/bloc/theme_bloc.dart';
import 'core/utils/theme/theme_helper.dart';
import 'features/education/presentation/screens/dashboard_page/bloc/dashboard_page_one_bloc.dart';
import 'features/education/presentation/screens/dashboard_page/models/dashboard_page_one_model.dart';
import 'features/education/presentation/screens/onboarding/models/onboarding_page_one_model.dart';
import 'localization/app_localization.dart';

class EducationApp extends StatelessWidget {
  EducationApp({super.key});

  final RouteGenerator _appRouter = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => ThemeBloc(
                    ThemeState(
                      themeType: PrefStorage().getThemeData(),
                    ),
                  )
          ),
          BlocProvider<RouteCubit>(
              create: (context) => RouteCubit()
          ),
          BlocProvider<OnboardingPageOneBloc>(
              create: (context) => OnboardingPageOneBloc(
                  OnboardingPageOneState(
                      onboardingPageOneModelObj: const OnboardingPageOneModel()
                  )
              )..add(OnboardingPageOneInitialEvent())
          ),
          BlocProvider<DashboardPageOneBloc>(
              create: (context) => DashboardPageOneBloc(
                  DashboardPageOneState(
                    dashboardPageOneModelObj: DashboardPageOneModel(),
                  )
              )..add(DashboardPageOneInitialEvent())
          ),

        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              theme: theme,
              title: 'BJIT Education',
              navigatorKey: NavigatorService.navigatorKey,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                AppLocalizationDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale(
                  'en',
                  '',
                ),
              ],
              //initialRoute: AppRoutes.initialRoute,
              onGenerateRoute: _appRouter.generateRoute,
            );
          },
        )
    );
  }

}
