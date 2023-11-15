import 'package:bjit_education/features/quran/presentation/bloc/local/local_chapter_bloc.dart';
import 'package:bjit_education/features/quran/presentation/bloc/remote/remote_quran_bloc.dart';
import 'package:bjit_education/features/quran/presentation/bloc/remote/remote_quran_event.dart';
import 'package:bjit_education/features/quran/presentation/pages/chapter_list_page.dart';
import 'package:bjit_education/features/quran/presentation/pages/wish_list_page.dart';
import 'package:bjit_education/injection_container.dart';
import 'package:bjit_education/core/utils/navigator_service.dart';
import 'package:bjit_education/core/utils/pref_utils.dart';
import 'package:bjit_education/localization/app_localization.dart';
import 'package:bjit_education/routes/app_routes.dart';
import 'package:bjit_education/theme/bloc/theme_bloc.dart';
import 'package:bjit_education/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'features/quran/presentation/pages/initial_page.dart';


var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init()
  ]).then((value) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(
        ThemeState(
          themeType: PrefUtils().getThemeData(),
        ),
      ),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: theme,
            title: 'khalilur_s_application1',
            navigatorKey: NavigatorService.navigatorKey,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              AppLocalizationDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              Locale(
                'en',
                '',
              ),
            ],
            initialRoute: AppRoutes.initialRoute,
            routes: AppRoutes.routes,
          );
        },
      ),
    );
  }
}
