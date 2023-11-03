import 'package:bjit_education/features/quran/presentation/bloc/local/local_chapter_bloc.dart';
import 'package:bjit_education/features/quran/presentation/bloc/remote/remote_quran_bloc.dart';
import 'package:bjit_education/features/quran/presentation/bloc/remote/remote_quran_event.dart';
import 'package:bjit_education/features/quran/presentation/pages/chapter_list_page.dart';
import 'package:bjit_education/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


Future<void> main() async {
  //MaterialApp(home: MyHomePage());
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<RemoteQuranBloc>(
        create: (_) => sl<RemoteQuranBloc>(),
      ),
      BlocProvider<LocalChapterBloc>(
        create: (context) => sl<LocalChapterBloc>(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteQuranBloc>(
        create: (context) => sl()..add(const GetQuranChapters()),
        child: MaterialApp(
            title: 'Al Quran',
            theme: ThemeData(primarySwatch: Colors.purple),
            home: const ChapterListPage()));
  }
}
