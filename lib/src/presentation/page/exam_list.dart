import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_flutter_project/src/presentation/controller/controller.dart';
import 'package:test_flutter_project/src/presentation/widget/exam/search_bar_widget.dart';
import 'package:test_flutter_project/src/presentation/widget/exam/tabbar_widget.dart';

import '../../shared/widget/custom_space.dart';


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
        _tabs(context)
      ],
    );
  }

  Widget _tabs(BuildContext context) {
    return Expanded(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30) , topRight: Radius.circular(30)),
              color: Theme.of(context).indicatorColor
          ),
          child: TabBarWidget(initialIndex: 0),
        ),
      );
  }

  Widget _header(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 17.0),
        child: Column(
          children: [
            CustomSpace(height: 17),
            _examTitle(context),
            CustomSpace(height: 17),
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


}
