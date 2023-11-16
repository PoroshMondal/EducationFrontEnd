
import 'package:bjit_education/core/resources/data_state.dart';
import 'package:bjit_education/features/edu/data/models/chapter_model.dart';
import 'package:bjit_education/features/edu/domain/entities/chapter_entity.dart';

abstract class eduRepository{
  Future<DataState<ChapterListModel>> getChapters();
  // local db
  //Future<ChapterListModel?> getLocalChapters();
  Future<void> saveChapters(ChapterEntity chapter);

}