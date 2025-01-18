import 'package:flutter/material.dart';
import 'package:test_flutter_project/src/data/model/exam/exam_model.dart';

class ExamItem extends StatelessWidget {
   const ExamItem({required this.examItem , super.key});
 final ExamModel examItem ;
  @override
  Widget build(BuildContext context) {
    return Text(examItem.id.toString());
  }
}
