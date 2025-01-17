part of '../repository.dart';


abstract class ExamsRepository {
  Future<List<ExamEntity>> getExamList({required int page ,  String? searchQuery ,String? lessonId });
}
