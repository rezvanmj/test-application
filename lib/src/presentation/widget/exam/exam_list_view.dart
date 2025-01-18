import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_flutter_project/src/data/model/exam/exam_model.dart';
import 'package:test_flutter_project/src/domain/entity/exam/exam_entity.dart';
import 'package:test_flutter_project/src/presentation/widget/exam/exam_item.dart';

import '../../controller/controller.dart';

class ExamListView extends StatelessWidget {
  const ExamListView({required this.examList, super.key});

  final List<ExamEntity> examList;

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, ref, _) => examList.isNotEmpty
            ? _examList()
            : _emptyList(context));
  }

  Widget _emptyList(BuildContext context ) => Center(child: Text('لیست خالی است' , style: Theme.of(context).textTheme.bodyMedium,));

  Widget _examList() {
    return ListView.builder(
              itemCount: examList.length,
              itemBuilder: (
                context,
                index,
              ) =>
                  ExamItem(
                    examItem: examList[index],
                  ));
  }
}
