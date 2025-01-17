import 'package:test_flutter_project/src/data/model/exam/answers_model.dart';
import 'package:test_flutter_project/src/data/model/exam/current_answer_model.dart';

class Questions {
  Questions({
    num? id,
    String? title,
    dynamic attachment,
    List<Answers>? answers,
    num? duration,
    String? type,
    CurrentAnswer? currentAnswer,
    List<String>? exams,
    String? createdAt,
    String? updatedAt,}){
    _id = id;
    _title = title;
    _attachment = attachment;
    _answers = answers;
    _duration = duration;
    _type = type;
    _currentAnswer = currentAnswer;
    _exams = exams;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Questions.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _attachment = json['attachment'];
    if (json['answers'] != null) {
      _answers = [];
      json['answers'].forEach((v) {
        _answers?.add(Answers.fromJson(v));
      });
    }
    _duration = json['duration'];
    _type = json['type'];
    _currentAnswer = json['currentAnswer'] != null ? CurrentAnswer.fromJson(json['currentAnswer']) : null;
    _exams = json['exams'] != null ? json['exams'].cast<String>() : [];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _title;
  dynamic _attachment;
  List<Answers>? _answers;
  num? _duration;
  String? _type;
  CurrentAnswer? _currentAnswer;
  List<String>? _exams;
  String? _createdAt;
  String? _updatedAt;
  Questions copyWith({  num? id,
    String? title,
    dynamic attachment,
    List<Answers>? answers,
    num? duration,
    String? type,
    CurrentAnswer? currentAnswer,
    List<String>? exams,
    String? createdAt,
    String? updatedAt,
  }) => Questions(  id: id ?? _id,
    title: title ?? _title,
    attachment: attachment ?? _attachment,
    answers: answers ?? _answers,
    duration: duration ?? _duration,
    type: type ?? _type,
    currentAnswer: currentAnswer ?? _currentAnswer,
    exams: exams ?? _exams,
    createdAt: createdAt ?? _createdAt,
    updatedAt: updatedAt ?? _updatedAt,
  );
  num? get id => _id;
  String? get title => _title;
  dynamic get attachment => _attachment;
  List<Answers>? get answers => _answers;
  num? get duration => _duration;
  String? get type => _type;
  CurrentAnswer? get currentAnswer => _currentAnswer;
  List<String>? get exams => _exams;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['attachment'] = _attachment;
    if (_answers != null) {
      map['answers'] = _answers?.map((v) => v.toJson()).toList();
    }
    map['duration'] = _duration;
    map['type'] = _type;
    if (_currentAnswer != null) {
      map['currentAnswer'] = _currentAnswer?.toJson();
    }
    map['exams'] = _exams;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}
