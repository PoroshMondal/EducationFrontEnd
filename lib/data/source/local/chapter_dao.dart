import 'package:floor/floor.dart';

import '../remote/models/chapter_model.dart';

@dao
abstract class ChapterDao {
  @Insert()
  Future<void> insertChapter(ChapterModel chapter);

  /*
  @Query('SELECT * FROM chapter')
  Future<ChapterListModel?> getChapters();
*/

}
