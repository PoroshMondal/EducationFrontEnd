
import 'package:bjit_education/core/usecases/usecase.dart';
import 'package:bjit_education/features/quran/domain/entities/chapter_entity.dart';
import 'package:bjit_education/features/quran/domain/repository/quran_repository.dart';

class SaveChaptersUseCase implements UseCase<void, ChapterEntity> {
  final QuranRepository _quranRepository;

  SaveChaptersUseCase(this._quranRepository);

  @override
  Future<void> call({ChapterEntity ? params}) {
    return _quranRepository.saveChapters(params!);
  }
}
