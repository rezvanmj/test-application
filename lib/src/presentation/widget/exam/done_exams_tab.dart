
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import 'exam_list_view.dart';
class DoneExamsTab extends StatelessWidget {
  const DoneExamsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder : (context , ref , _ ) {

      return ExamListView(examList: [],);
    });
  }
}
