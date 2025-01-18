import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_flutter_project/src/domain/entity/exam/exam_entity.dart';
import 'package:test_flutter_project/src/presentation/widget/exam/exam_item.dart';
import 'package:test_flutter_project/src/shared/widget/custom_empty_widget.dart';
import 'package:test_flutter_project/src/shared/widget/custom_error_widget.dart';

import '../../controller/controller.dart';

class ExamListView extends ConsumerWidget {
  const ExamListView({required this.examList, super.key});

  final List<ExamEntity> examList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(examListControllerProvider(page: 0));
    if (state.value?.hasReachEnd == false && state.value!.exams.isEmpty) {
      return _errorRetry(ref);
    } else {
      return examList.isNotEmpty ? _examList() : CustomEmptyWidget();
    }
  }

  Widget _errorRetry(WidgetRef ref) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomErrorWidget(),
            GestureDetector(
                onTap: () {
                  ref
                      .read(examListControllerProvider(page: 0).notifier)
                      .fetchData(page: 0);
                },
                child: Icon(Icons.refresh))
          ],
        ),
      );
  }

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
