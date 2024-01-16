/*
import 'dart:io';
import 'package:bjit_education/core/resources/data_state.dart';
import 'package:bjit_education/features/edu/data/data_sources/local/app_database.dart';
import 'package:bjit_education/features/edu/data/data_sources/remote/edu_api_service.dart';
import 'package:bjit_education/features/edu/data/models/chapter_model.dart';
import 'package:bjit_education/features/edu/domain/entities/chapter_entity.dart';
import 'package:bjit_education/features/edu/domain/repository/edu_repository.dart';
import 'package:dio/dio.dart';

class eduRepositoryImpl implements eduRepository {
  final eduApiService _apiService;
  final AppDatabase _appDatabase;
  eduRepositoryImpl(this._apiService, this._appDatabase);

  @override
  Future<DataState<ChapterListModel>> getChapters() async {
    try {
      final httpResponse = await _apiService.getChapters();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        print("remote > success > getChapters() > ${httpResponse.data}");
        return DataSuccess(httpResponse.data);
      } else {
        print("remote > exception > getChapters() > ${httpResponse.response.statusMessage}");
        return DataFailed(DioError(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioError catch (e) {
      print("remote > error > getChapters() > ${e.response}");
      return DataFailed(e);
    }
  }
*/
/*

  @override
  Future<ChapterListModel?> getLocalChapters() async{
      return _appDatabase.chapterDAO.getChapters();
  }
*//*


  @override
  Future<void> saveChapters(ChapterEntity chapter) {
   return _appDatabase.chapterDAO.insertChapter(ChapterModel.fromEntity(chapter));
  }
}




*/






