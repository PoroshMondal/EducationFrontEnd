import 'package:bjit_education/EducationApp.dart';
import 'package:bjit_education/core/utils/pref_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init()
  ]).then((value) {
    runApp(EducationApp());
  });
}
