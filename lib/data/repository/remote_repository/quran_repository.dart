import 'package:bjit_education/core/resources/data_state.dart';

import '../../domain/entities/chapter_entity.dart';
import '../../source/remote/models/chapter_model.dart';

abstract class eduRepository{
  Future<DataState<ChapterListModel>> getChapters();
  // local db
  //Future<ChapterListModel?> getLocalChapters();
  Future<void> saveChapters(ChapterEntity chapter);

}