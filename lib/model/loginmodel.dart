class LoginModel {
/*
{
  "user": "admin",
  "pass": "admin"
} 
*/

  String? user;
  String? pass;

  LoginModel({
    this.user,
    this.pass,
  });
  LoginModel.fromJson(Map<String, dynamic> json) {
    user = json['user']?.toString();
    pass = json['pass']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['user'] = user;
    data['pass'] = pass;
    return data;
  }
}