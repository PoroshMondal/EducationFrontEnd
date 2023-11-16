
import 'package:bjit_education/features/edu/data/models/chapter_model.dart';
import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';

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