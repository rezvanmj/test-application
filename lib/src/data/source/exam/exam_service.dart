
part of '../sources.dart';


@RestApi()
abstract class ExamService {
  factory ExamService(Dio dio, {String baseUrl}) = _ExamService;

  @GET('exam')
  Future<List<ExamModel>> getExamList({
    @Field('page') required int page,
    @Field('limit') required int limit,
    @Field('lessonId')  String? lessonId,
    @Field('search')  String? search,
  });
}
