import 'package:bjit_education/core/resources/data_state.dart';
import 'package:bjit_education/features/quran/domain/usecases/get_chapters.dart';
import 'package:bjit_education/features/quran/presentation/bloc/remote/remote_quran_event.dart';
import 'package:bjit_education/features/quran/presentation/bloc/remote/remote_quran_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoteQuranBloc extends Bloc<RemoteQuranEvent, RemoteQuranState> {
  final GetChaptersUseCase _getChaptersUseCase;

  RemoteQuranBloc(this._getChaptersUseCase)
      : super(const RemoteQuranChapterListLoading()) {
    on<GetQuranChapters>(onGetChapters);
  }

  void onGetChapters(
      GetQuranChapters event, Emitter<RemoteQuranState> emit) async {
    final dataState = await _getChaptersUseCase();
    if (dataState is DataSuccess && dataState.data != null) {
      emit(RemoteQuranChapterListDone(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(RemoteQuranChapterListError(dataState.error!));
    }
  }
}
