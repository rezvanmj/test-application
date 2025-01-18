
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_flutter_project/src/data/model/exam/exam_model.dart';
import 'package:test_flutter_project/src/domain/entity/exam/exam_entity.dart';


import '../../controller/controller.dart';
import 'exam_list_view.dart';
class DoneExamsTab extends ConsumerWidget {
  const DoneExamsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(examListControllerProvider(page: 0));
    return switch (state) {
      AsyncData(:final value) => _examList(value , ref ),
      AsyncError() => _error(context),
      _ => _loading(),
    };
  }

  Widget _loading(){
    return Center(child: SizedBox(
        height: 12,
        width: 12,
        child: CircularProgressIndicator())) ;
  }

  Widget _error(BuildContext context ){

    return Center(child: Text('خطایی رخ داده است' , style: Theme.of(context).textTheme.bodyMedium,));
  }


 Widget _examList(ExamListState value , WidgetRef ref ){
    List<ExamEntity>? exams = value.exams ;
    return RefreshIndicator(
        onRefresh: ()async{
          final state = ref.watch(examListControllerProvider(page: 0));
          exams = state.value?.exams ;
        },
        child: ExamListView(examList: exams ?? [] ));
 }
}
