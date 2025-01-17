import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_flutter_project/src/presentation/App.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}
