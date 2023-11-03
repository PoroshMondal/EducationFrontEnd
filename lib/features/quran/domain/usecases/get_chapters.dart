

import 'package:bjit_education/core/resources/data_state.dart';
import 'package:bjit_education/core/usecases/usecase.dart';
import 'package:bjit_education/features/quran/data/models/chapter_model.dart';
import 'package:bjit_education/features/quran/domain/repository/quran_repository.dart';

class GetChaptersUseCase implements UseCase<DataState<ChapterListModel>, void> {
  final QuranRepository _quranRepository;

  GetChaptersUseCase(this._quranRepository);

  @override
  Future<DataState<ChapterListModel>> call({void params}) {
    return _quranRepository.getChapters();
  }
}
