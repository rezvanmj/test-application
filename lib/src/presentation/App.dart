import 'package:flutter/material.dart';
import 'package:test_flutter_project/core/theme/theme.dart';
import 'package:test_flutter_project/src/presentation/page/exam_list.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appThemeData ,
      debugShowCheckedModeBanner: false ,
      home: const Directionality(

          textDirection: TextDirection.rtl,
          child: ExamList()),
    );
  }
}
