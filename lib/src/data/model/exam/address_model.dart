class Address {
  Address({
    String? street,
    String? city,
    String? state,
    String? zipCode,}){
    _street = street;
    _city = city;
    _state = state;
    _zipCode = zipCode;
  }

  Address.fromJson(dynamic json) {
    _street = json['street'];
    _city = json['city'];
    _state = json['state'];
    _zipCode = json['zipCode'];
  }
  String? _street;
  String? _city;
  String? _state;
  String? _zipCode;
  Address copyWith({  String? street,
    String? city,
    String? state,
    String? zipCode,
  }) => Address(  street: street ?? _street,
    city: city ?? _city,
    state: state ?? _state,
    zipCode: zipCode ?? _zipCode,
  );
  String? get street => _street;
  String? get city => _city;
  String? get state => _state;
  String? get zipCode => _zipCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['street'] = _street;
    map['city'] = _city;
    map['state'] = _state;
    map['zipCode'] = _zipCode;
    return map;
  }

}
