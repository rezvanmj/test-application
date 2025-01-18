import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_flutter_project/src/data/model/exam/exam_model.dart';
import 'package:test_flutter_project/src/presentation/widget/exam/exam_item.dart';

class ExamListView extends StatelessWidget {
  const ExamListView({required this.examList ,  super.key});
  final List<ExamModel> examList ;
  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context , ref , _ )=> ListView.builder(
            itemCount: examList.length,
            itemBuilder: (context , index , )=> ExamItem(examItem: examList[index],)));
  }
}
