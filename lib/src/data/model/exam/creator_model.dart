import 'address_model.dart';

class Creator {
  Creator({
    String? identifier,
    String? firstName,
    String? lastName,
    String? chatId,
    String? phone,
    String? sickness,
    String? familyType,
    String? profileImage,
    String? description,
    String? grade,
    String? nationality,
    String? religon,
    String? email,
    Address? address,
    String? field,
    bool? newUser,
    bool? active,}){
    _identifier = identifier;
    _firstName = firstName;
    _lastName = lastName;
    _chatId = chatId;
    _phone = phone;
    _sickness = sickness;
    _familyType = familyType;
    _profileImage = profileImage;
    _description = description;
    _grade = grade;
    _nationality = nationality;
    _religon = religon;
    _email = email;
    _address = address;
    _field = field;
    _newUser = newUser;
    _active = active;
  }

  Creator.fromJson(dynamic json) {
    _identifier = json['identifier'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _chatId = json['chatId'];
    _phone = json['phone'];
    _sickness = json['sickness'];
    _familyType = json['familyType'];
    _profileImage = json['profileImage'];
    _description = json['description'];
    _grade = json['grade'];
    _nationality = json['nationality'];
    _religon = json['religon'];
    _email = json['email'];
    _address = json['address'] != null ? Address.fromJson(json['address']) : null;
    _field = json['field'];
    _newUser = json['newUser'];
    _active = json['active'];
  }
  String? _identifier;
  String? _firstName;
  String? _lastName;
  String? _chatId;
  String? _phone;
  String? _sickness;
  String? _familyType;
  String? _profileImage;
  String? _description;
  String? _grade;
  String? _nationality;
  String? _religon;
  String? _email;
  Address? _address;
  String? _field;
  bool? _newUser;
  bool? _active;
  Creator copyWith({  String? identifier,
    String? firstName,
    String? lastName,
    String? chatId,
    String? phone,
    String? sickness,
    String? familyType,
    String? profileImage,
    String? description,
    String? grade,
    String? nationality,
    String? religon,
    String? email,
    Address? address,
    String? field,
    bool? newUser,
    bool? active,
  }) => Creator(  identifier: identifier ?? _identifier,
    firstName: firstName ?? _firstName,
    lastName: lastName ?? _lastName,
    chatId: chatId ?? _chatId,
    phone: phone ?? _phone,
    sickness: sickness ?? _sickness,
    familyType: familyType ?? _familyType,
    profileImage: profileImage ?? _profileImage,
    description: description ?? _description,
    grade: grade ?? _grade,
    nationality: nationality ?? _nationality,
    religon: religon ?? _religon,
    email: email ?? _email,
    address: address ?? _address,
    field: field ?? _field,
    newUser: newUser ?? _newUser,
    active: active ?? _active,
  );
  String? get identifier => _identifier;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get chatId => _chatId;
  String? get phone => _phone;
  String? get sickness => _sickness;
  String? get familyType => _familyType;
  String? get profileImage => _profileImage;
  String? get description => _description;
  String? get grade => _grade;
  String? get nationality => _nationality;
  String? get religon => _religon;
  String? get email => _email;
  Address? get address => _address;
  String? get field => _field;
  bool? get newUser => _newUser;
  bool? get active => _active;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['identifier'] = _identifier;
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['chatId'] = _chatId;
    map['phone'] = _phone;
    map['sickness'] = _sickness;
    map['familyType'] = _familyType;
    map['profileImage'] = _profileImage;
    map['description'] = _description;
    map['grade'] = _grade;
    map['nationality'] = _nationality;
    map['religon'] = _religon;
    map['email'] = _email;
    if (_address != null) {
      map['address'] = _address?.toJson();
    }
    map['field'] = _field;
    map['newUser'] = _newUser;
    map['active'] = _active;
    return map;
  }

}
