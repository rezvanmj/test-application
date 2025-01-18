import 'package:flutter/material.dart';
import 'package:test_flutter_project/src/presentation/widget/exam/exam_list_view.dart';
class InProgressExamsTab extends StatelessWidget {
  const InProgressExamsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ExamListView(examList: []);
  }
}
