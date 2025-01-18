


import 'package:riverpod_annotation/riverpod_annotation.dart';

@riverpod
class TabBarController extends Notifier<int> {
  @override
  int build()  {
    int? index = 0;
    updateIndex(index: index) ;
    return index ;

  }

  Future<void> updateIndex({required int index}) async {
  state = index ;
  }
}
final tabBarControllerProvider = NotifierProvider<TabBarController,int>(TabBarController.new);
