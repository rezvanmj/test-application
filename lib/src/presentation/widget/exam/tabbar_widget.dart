import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_flutter_project/src/presentation/controller/exam/tab_bar_controller.dart';
import 'package:test_flutter_project/src/presentation/widget/exam/done_exams_tab.dart';
import 'package:test_flutter_project/src/presentation/widget/exam/in_progress_exams_tab.dart';

class TabBarWidget extends ConsumerStatefulWidget {
  final int initialIndex;

  const TabBarWidget({super.key, required this.initialIndex});

  @override
  ConsumerState<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends ConsumerState<TabBarWidget>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  int currentIndex = 0 ;
  @override
  void initState() {
    super.initState();


    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: widget.initialIndex,
    );


    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
      ref.read(tabBarControllerProvider.notifier).updateIndex(index: _tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    return Consumer(
      builder:(context , ref , _ ) {

       currentIndex = ref.watch(tabBarControllerProvider);
        return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            child: _tabs(context, _tabController, currentIndex),
          ),
          Expanded(
            child: TabBarView(
              dragStartBehavior: DragStartBehavior.down,
              controller: _tabController,
              children: const [
                DoneExamsTab(),
                InProgressExamsTab(),
              ],
            ),
          ),
        ],
      );
      },
    );
  }

  Widget _tabs(BuildContext context, TabController tabController, int currentIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
        ),
        child: TabBar(
          enableFeedback: false,
          automaticIndicatorColorAdjustment: false,
          controller: tabController,
          dividerColor: Colors.transparent,
          indicator: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            color: Theme.of(context).primaryColor,
          ),
          unselectedLabelColor: Theme.of(context).cardColor,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
            Tab(
              child: Text(
                'انجام نشده',
                style: currentIndex == 0
                    ? Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Theme.of(context).cardColor)
                    : Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Tab(
              child: Text('تمام شده',
                  style: currentIndex == 1
                      ? Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Theme.of(context).cardColor)
                      : Theme.of(context).textTheme.bodyLarge),
            ),
          ],
        ),
      ),
    );
  }
}
