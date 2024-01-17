/*


import 'package:bjit_education/features/edu/domain/usecases/save_chapters.dart';
import 'package:bjit_education/features/edu/presentation/bloc/local/lcoal_chapter_state.dart';
import 'package:bjit_education/features/edu/presentation/bloc/local/local_chapter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocalChapterBloc extends Bloc<LocalChaptersEvent,LocalChapterState> {
 // final GetSavedChaptersUseCase _getSavedChaptersUseCase;
  final SaveChaptersUseCase _saveChaptersUseCase;


  LocalChapterBloc(
    //  this._getSavedChaptersUseCase,
      this._saveChaptersUseCase,
      ) : super(const LocalChaptersLoading()){
    on <GetSavedChapters> (onGetSavedChapters);
    on <SaveChapter> (onSaveChapters);
  }


  void onGetSavedChapters(GetSavedChapters event,Emitter<LocalChapterState> emit) async {
 //   final chapters = await _getSavedChaptersUseCase();
    //emit(LocalChaptersDone(chapters));
  }

  void onSaveChapters(SaveChapter saveChapter,Emitter<LocalChapterState> emit) async {
    await _saveChaptersUseCase(params: saveChapter.chapter); // passing event -> saving data
    //final chapters = await _getSavedChaptersUseCase();
    emit(const LocalChaptersSavedDone());
  }
}
*/
