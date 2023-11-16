import 'package:bjit_education/features/edu/data/models/chapter_model.dart';
import 'package:floor/floor.dart';

@dao
abstract class ChapterDao {
  @Insert()
  Future<void> insertChapter(ChapterModel chapter);

  /*
  @Query('SELECT * FROM chapter')
  Future<ChapterListModel?> getChapters();
*/

}
