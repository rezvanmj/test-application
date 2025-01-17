import 'package:test_flutter_project/src/data/model/exam/creator_model.dart';
import 'package:test_flutter_project/src/data/model/exam/question_model.dart';
import 'package:test_flutter_project/src/domain/entity/exam/exam_entity.dart';

class ExamModel extends ExamEntity {
  ExamModel({
    int? id,
    String? title,
    String? description,
    List<Questions>? questions,
    String? startDate,
    String? endDate,
    int? duration,
    String? createdAt,
    String? updatedAt,
    Creator? creator,
    String? deletedAt,
  }):super(id:id ,title: title , description:description , questions: questions ,
  startDate: startDate , endDate: endDate , duration: duration , createdAt: createdAt , deletedAt: deletedAt,
  ) {
    _id = id;
    _title = title;
    _description = description;
    _questions = questions;
    _startDate = startDate;
    _endDate = endDate;
    _duration = duration;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _creator = creator;
    _deletedAt = deletedAt;
  }

  ExamModel.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    if (json['questions'] != null) {
      _questions = [];
      json['questions'].forEach((v) {
        _questions?.add(Questions.fromJson(v));
      });
    }
    _startDate = json['startDate'];
    _endDate = json['endDate'];
    _duration = json['duration'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _creator =
        json['creator'] != null ? Creator.fromJson(json['creator']) : null;
    _deletedAt = json['deletedAt'];
  }

  int? _id;
  String? _title;
  String? _description;
  List<Questions>? _questions;
  String? _startDate;
  String? _endDate;
  int? _duration;
  String? _createdAt;
  String? _updatedAt;
  Creator? _creator;
  String? _deletedAt;

  ExamModel copyWith({
    int? id,
    String? title,
    String? description,
    List<Questions>? questions,
    String? startDate,
    String? endDate,
    int? duration,
    String? createdAt,
    String? updatedAt,
    Creator? creator,
    String? deletedAt,
  }) =>
      ExamModel(
        id: id ?? _id,
        title: title ?? _title,
        description: description ?? _description,
        questions: questions ?? _questions,
        startDate: startDate ?? _startDate,
        endDate: endDate ?? _endDate,
        duration: duration ?? _duration,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        creator: creator ?? _creator,
        deletedAt: deletedAt ?? _deletedAt,
      );

  @override
  int? get id => _id;

  @override
  String? get title => _title;

  @override
  String? get description => _description;

  @override
  List<Questions>? get questions => _questions;

  @override
  String? get startDate => _startDate;

  @override
  String? get endDate => _endDate;

  @override
  int? get duration => _duration;

  @override
  String? get createdAt => _createdAt;

  @override
  String? get updatedAt => _updatedAt;

  @override
  Creator? get creator => _creator;

  @override
  String? get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['description'] = _description;
    if (_questions != null) {
      map['questions'] = _questions?.map((v) => v.toJson()).toList();
    }
    map['startDate'] = _startDate;
    map['endDate'] = _endDate;
    map['duration'] = _duration;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_creator != null) {
      map['creator'] = _creator?.toJson();
    }
    map['deletedAt'] = _deletedAt;
    return map;
  }
}
