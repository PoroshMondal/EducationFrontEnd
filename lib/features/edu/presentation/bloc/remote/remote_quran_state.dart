import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';

import '../../../../../data/source/remote/models/chapter_model.dart';

abstract class RemoteeduState extends Equatable {
  //final List<ChapterEntity> ? chapters;
  final ChapterListModel ? chapters;
  final DioError ? error;

  const RemoteeduState({this.chapters,this.error});

  @override
  List<Object> get props => [chapters!, error!];
}

class RemoteeduChapterListLoading extends RemoteeduState {
  const RemoteeduChapterListLoading();
}

class RemoteeduChapterListDone extends RemoteeduState {
  const RemoteeduChapterListDone(ChapterListModel chapters) : super(chapters: chapters);
}

class RemoteeduChapterListError extends RemoteeduState {
  const RemoteeduChapterListError(DioError error) : super(error: error);
}