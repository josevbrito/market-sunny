class UserModel {
  String name;
  String email;
  String cnpj;

  UserModel({
    required this.name,
    required this.email,
    required this.cnpj,
  });

  UserModel.fromMap(Map<String, dynamic> map):
    name = map['name'],
    email = map['email'],
    cnpj = map['cnpj'];
  
  Map<String, dynamic> toMap() {
    return {
      'name' : name,
      'email' : email,
      'cnpj' : cnpj,
    };
  }
}
