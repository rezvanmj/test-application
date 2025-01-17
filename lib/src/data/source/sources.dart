import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_flutter_project/src/data/model/auth/auth_model.dart';
import 'package:test_flutter_project/src/data/model/exam/exam_model.dart';
import 'package:test_flutter_project/src/shared/provider/provider.dart';
import 'package:test_flutter_project/src/domain/entity/exam/exam_entity.dart';

part 'sources.g.dart';

part 'auth/auth_data_source.dart';
part 'auth/auth_data_source_imp.dart';
part 'auth/auth_service.dart';
part 'exam/exam_data_source.dart';
part 'exam/exam_data_source_imp.dart';
part 'exam/exam_service.dart';
