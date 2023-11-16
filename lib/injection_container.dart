import 'package:bjit_education/features/edu/data/data_sources/local/app_database.dart';
import 'package:bjit_education/features/edu/domain/usecases/get_chapters.dart';
import 'package:bjit_education/features/edu/domain/usecases/save_chapters.dart';
import 'package:bjit_education/features/edu/presentation/bloc/local/local_chapter_bloc.dart';

import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';


final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  print("injection_container > initializeDependency");
  final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  sl.registerSingleton<AppDatabase>(database);

  // Dio
  sl.registerSingleton<Dio>(Dio());
/*

  // Dependencies - edu
  sl.registerSingleton<eduApiService>(eduApiService(sl()));
  sl.registerSingleton<eduRepository>(eduRepositoryImpl(sl(),sl()));

  //usecases
   sl.registerSingleton<GetChaptersUseCase>(GetChaptersUseCase(sl()));
  // sl.registerSingleton<GetSavedChaptersUseCase>(GetSavedChaptersUseCase(sl()));
   sl.registerSingleton<SaveChaptersUseCase>(SaveChaptersUseCase(sl()));

  //Blocs
  sl.registerFactory<RemoteeduBloc>(() => RemoteeduBloc(sl()));
  sl.registerFactory<LocalChapterBloc>(() => LocalChapterBloc(sl()));
*/

  //sl.registerFactory<SignInPageOneBloc>(() => SignInPageOneBloc(SignInPageOneState()));
}