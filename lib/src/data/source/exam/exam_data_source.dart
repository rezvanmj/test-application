
part of '../sources.dart';



abstract class ExamDataSource {
  Future<List<ExamEntity>> getExamList({required int page ,  String? searchQuery , String? lessonId });
}
