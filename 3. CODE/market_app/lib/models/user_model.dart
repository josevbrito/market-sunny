class UserModel {
  String name;
  String email;

  UserModel({
    required this.name,
    required this.email,
  });

  UserModel.fromMap(Map<String, dynamic> map):
    name = map['name'],
    email = map['email'];
  
  Map<String, dynamic> toMap() {
    return {
      'name' : name,
      'email' : email,
    };
  }
}
