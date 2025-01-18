part of '../controller.dart';

@riverpod
class ExamListController extends _$ExamListController {
  @override
  FutureOr<ExamListState> build({required int page , String?searchQuery , String? lessonId }) async {
    log('CALLING THIS ');
    return fetchData(page: page , searchQuery: searchQuery , lessonId: lessonId);
  }

  Future<ExamListState> fetchData({required int page , String?searchQuery , String? lessonId }) async {
    final List<ExamEntity> exams = await ref.watch(getExamUseCaseProvider( page: page , searchQuery:searchQuery , lessonId: lessonId ).future);
    log('exams : $exams');

    return ExamListState( exams: exams);
  }
}
