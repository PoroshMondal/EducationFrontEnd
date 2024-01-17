import 'package:bjit_education/EducationApp.dart';
import 'package:bjit_education/core/utils/local_storage/pref_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefStorage().init()
  ]).then((value) {
    runApp(EducationApp());
  });
}
