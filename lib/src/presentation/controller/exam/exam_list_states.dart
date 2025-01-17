part of '../controller.dart';



@freezed
sealed class ExamListState with _$ExamListState {
  factory ExamListState({
    @Default(false) bool isLoading,
    @Default([]) List<ExamEntity> exams,
    @Default(false) bool hasReachEnd,
  }) = _ExamListState;
}
