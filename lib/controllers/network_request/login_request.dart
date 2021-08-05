// class LoginRequestModel {
//   String email;
//   String password;
//   LoginRequestModel({
//     required this.email,
//     required this.password,
//   });

//   Map<String, String> toJson() {
//     final Map<String, String> data = Map<String, String>();
//     data['email'] = this.email;
//     data['password'] = this.password;
//     return data;
//   }
// }

class LoginRequestModel {
  String? email;
  String? password;

  LoginRequestModel({
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email!.trim(),
      'password': password!.trim(),
    };

    return map;
  }
}
