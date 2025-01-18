// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:test_flutter_project/src/domain/entity/exam/exam_entity.dart';
// import 'package:test_flutter_project/src/domain/usecase/usecase.dart';
//
// @riverpod
// class ExamsListController extends Notifier<List<ExamEntity> > {
//   @override
//   List<ExamEntity> build() {
//
//     return [];
//   }
//
//   // Method to fetch data with parameters and update the state
//   Future<void> fetchExams({required int page, String? lessonId, String? searchQuery}) async {
//     List<ExamEntity> exams = await _fetchData(page: page, lessonId: lessonId, searchQuery: searchQuery);
//     state = exams; // Update the state with the fetched exams
//   }
//
//   Future<List<ExamEntity>> _fetchData({required int page, String? searchQuery, String? lessonId}) async {
//     final List<ExamEntity> exams = await ref.watch(getExamUseCaseProvider(page: page, searchQuery: searchQuery, lessonId: lessonId).future);
//     return exams;
//   }
// }
// final examsListControllerProvider = NotifierProvider<ExamsListController,List<ExamEntity>>(ExamsListController.new);
