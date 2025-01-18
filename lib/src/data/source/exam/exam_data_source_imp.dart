

part of '../sources.dart';




class ExamDataSourceImpl implements ExamDataSource {
  ExamDataSourceImpl({required ExamService service}) : _service = service;

  final ExamService _service;


  @override
  Future<List<ExamModel>> getExamList({required int page, String? searchQuery, String? lessonId}) {

   return  _service.getExamList(page: page, limit: AppValues.limitExamList , search: searchQuery , lessonId: lessonId) ;
  }
}

@riverpod
ExamDataSource examDataSource(Ref  ref) {
  final http = ref.watch(httpProvider);
  return ExamDataSourceImpl(service: ExamService(http));
}
