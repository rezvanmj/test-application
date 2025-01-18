part of '../controller.dart';

@riverpod
class ExamListController extends _$ExamListController {
  @override
  FutureOr<ExamListState> build(
      {required int page, String? searchQuery, String? lessonId}) async {
    return fetchData(page: page, searchQuery: searchQuery, lessonId: lessonId);
  }

  Future<ExamListState> fetchData(
      {required int page, String? searchQuery, String? lessonId}) async {
    try {
      final List<ExamEntity> exams = await ref.watch(getExamUseCaseProvider(
              page: page, searchQuery: searchQuery, lessonId: lessonId)
          .future);
      return ExamListState(exams: exams , hasReachEnd:true );
    } catch (error) {
      Fluttertoast.showToast(
        msg: "خطایی رخ داده است",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: CustomColors.errorColor,
        textColor: Colors.white,
        fontSize: 16.0,

      ); return ExamListState(hasReachEnd: false , exams: []);
    }

  }
}
