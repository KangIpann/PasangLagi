class User {
  String? email;
  String? password;
  String? name;
  String? phone;
  String? mitraID;
  String? mitraName;

  User({this.email, this.password, this.name});

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['name'] = name;
    return data;
  }
}