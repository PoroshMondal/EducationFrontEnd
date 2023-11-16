
import 'package:bjit_education/features/edu/domain/entities/chapter_entity.dart';
import 'package:equatable/equatable.dart';

abstract class LocalChaptersEvent extends Equatable {
  final ChapterEntity ? chapter;

  const LocalChaptersEvent({this.chapter});

  @override
  List<Object> get props => [chapter!];
}

class GetSavedChapters extends LocalChaptersEvent {
  const GetSavedChapters();
}

class SaveChapter extends LocalChaptersEvent {
  const SaveChapter(ChapterEntity chapter) : super(chapter: chapter);
}
