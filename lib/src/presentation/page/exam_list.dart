import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_flutter_project/src/presentation/controller/controller.dart';
import 'package:test_flutter_project/src/presentation/widget/exam/search_bar_widget.dart';
import 'package:test_flutter_project/src/presentation/widget/exam/tabbar_widget.dart';

import '../controller/exam/exams_list_controller.dart';

class ExamList extends ConsumerWidget {
  const ExamList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(examListControllerProvider(page: 0));
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Consumer(builder:(context , ref , _ )=> _body(context)),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _header(context) ,

        _tab(context)
      ],
    );
  }

  Widget _tab(BuildContext context) {
    return Expanded(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20) , topRight: Radius.circular(20)),
              color: Theme.of(context).indicatorColor
          ),
          child: TabBarWidget(initialIndex: 0),
        ),
      );
  }

  Widget _header(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          children: [    _verticalSpace(),
            _examTitle(context),
            _verticalSpace(),
            SearchBarWidget(),],
        ),
      );
  }

  Widget _examTitle(BuildContext context) {
    return Center(
                    child: Text(
                  'آزمون',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: Colors.white),
                ));
  }

  Widget _verticalSpace() => SizedBox(
        height: 17,
      );
}
