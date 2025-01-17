part of '../repository.dart';


class ExamRepositoryImpl implements ExamsRepository {
  ExamRepositoryImpl({required ExamDataSource source}) : _source = source;

  final ExamDataSource _source;

  @override
  Future<List<ExamEntity>> getExamList({required int page , String? searchQuery , String? lessonId }) async {
    final List<ExamEntity> list = await _source.getExamList(page: page , lessonId: lessonId , searchQuery:  searchQuery);
    return list;  //TODO DYNAMIC LIST
  }
}

@riverpod
ExamsRepository examRepository(Ref ref) {
  final source = ref.watch(examDataSourceProvider);
  return ExamRepositoryImpl(source: source);
}
