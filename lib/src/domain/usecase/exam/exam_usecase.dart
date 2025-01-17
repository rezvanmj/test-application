part of '../usecase.dart';

@riverpod
Future<List<ExamEntity>> getExamUseCase(Ref ref,
    {required int page , String? searchQuery , String? lessonId }) async {
  final repository = ref.watch(examRepositoryProvider);
  return await repository.getExamList(lessonId : lessonId , searchQuery:searchQuery , page:page );
}
