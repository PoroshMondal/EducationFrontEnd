import 'package:bjit_education/features/quran/data/models/chapter_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'quran_api_service.g.dart';

@RestApi(baseUrl: 'https://api.quran.com/api/v4/')
abstract class QuranApiService{
  factory QuranApiService(Dio dio) = _QuranApiService;

  @GET('chapters')
  Future<HttpResponse<ChapterListModel>> getChapters();
 }