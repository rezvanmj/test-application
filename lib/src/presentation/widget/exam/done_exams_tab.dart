
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_flutter_project/src/domain/entity/exam/exam_entity.dart';

import '../../../../core/colors/custom_colors.dart';
import '../../../shared/widget/custom_error_widget.dart';
import '../../../shared/widget/custom_loading.dart';
import '../../controller/controller.dart';
import 'exam_list_view.dart';
class DoneExamsTab extends ConsumerWidget {
  const DoneExamsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(examListControllerProvider(page: 0));

    return switch (state) {
      AsyncData(:final value) => _examList(value , ref ),
      AsyncError() => CustomErrorWidget(),
      AsyncLoading() => CustomLoading(),
   _=>CustomLoading()
    };
  }






 Widget _examList(ExamListState value , WidgetRef ref ){
    List<ExamEntity>? exams = value.exams ;
    return ExamListView(examList: exams );
 }
}
