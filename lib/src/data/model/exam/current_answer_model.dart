class CurrentAnswer {
  CurrentAnswer({
    num? id,
    String? text,
    String? question,
    dynamic attachment,
    String? createdAt,
    String? updatedAt,}){
    _id = id;
    _text = text;
    _question = question;
    _attachment = attachment;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  CurrentAnswer.fromJson(dynamic json) {
    _id = json['id'];
    _text = json['text'];
    _question = json['question'];
    _attachment = json['attachment'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  num? _id;
  String? _text;
  String? _question;
  dynamic _attachment;
  String? _createdAt;
  String? _updatedAt;
  CurrentAnswer copyWith({  num? id,
    String? text,
    String? question,
    dynamic attachment,
    String? createdAt,
    String? updatedAt,
  }) => CurrentAnswer(  id: id ?? _id,
    text: text ?? _text,
    question: question ?? _question,
    attachment: attachment ?? _attachment,
    createdAt: createdAt ?? _createdAt,
    updatedAt: updatedAt ?? _updatedAt,
  );
  num? get id => _id;
  String? get text => _text;
  String? get question => _question;
  dynamic get attachment => _attachment;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['text'] = _text;
    map['question'] = _question;
    map['attachment'] = _attachment;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}
