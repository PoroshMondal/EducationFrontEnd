import 'package:equatable/equatable.dart';

import '../../../../../data/domain/entities/chapter_entity.dart';

abstract class LocalChapterState extends Equatable {
  final List<ChapterEntity>? chapters;

  const LocalChapterState({this.chapters});

  @override
  List<Object> get props => [chapters??[]];
}

class LocalChaptersLoading extends LocalChapterState {
  const LocalChaptersLoading();
}

class LocalChaptersDone extends LocalChapterState {
  const LocalChaptersDone(List<ChapterEntity> chapters) : super(chapters: chapters);
}

class LocalChaptersSavedDone extends LocalChapterState {
  const LocalChaptersSavedDone();
}
