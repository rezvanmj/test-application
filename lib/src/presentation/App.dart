import 'package:flutter/material.dart';
import 'package:test_flutter_project/src/presentation/page/exam_list.dart';
import 'package:test_flutter_project/src/presentation/page/login_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExamList(),
    );
  }
}
