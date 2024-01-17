/*
import 'package:bjit_education/core/resources/data_state.dart';
import 'package:bjit_education/features/edu/domain/usecases/get_chapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoteeduBloc extends Bloc<RemoteeduEvent, RemoteeduState> {
  final GetChaptersUseCase _getChaptersUseCase;

  RemoteeduBloc(this._getChaptersUseCase)
      : super(const RemoteeduChapterListLoading()) {
    on<GeteduChapters>(onGetChapters);
  }

  void onGetChapters(
      GeteduChapters event, Emitter<RemoteeduState> emit) async {
    final dataState = await _getChaptersUseCase();
    if (dataState is DataSuccess && dataState.data != null) {
      emit(RemoteeduChapterListDone(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(RemoteeduChapterListError(dataState.error!));
    }
  }
}
*/
