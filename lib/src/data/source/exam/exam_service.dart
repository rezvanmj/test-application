
part of '../sources.dart';


@RestApi()
abstract class ExamService {
  factory ExamService(Dio dio, {String baseUrl}) = _ExamService;

  @GET('exam')
  Future<List<ExamModel>> getExamList({
    @Query('page') required int page,
    @Query('limit') required int limit,
    @Query('lessonId')  String? lessonId,
    @Query('search')  String? search,
  });
}
