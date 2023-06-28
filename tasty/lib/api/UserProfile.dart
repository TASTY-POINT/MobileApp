class UserProfile {
  int id;
  String name;
  String phoneNumber;
  String type;

  UserProfile({
    required this.id,
    required this.name,
    required this.phoneNumber,//se usara este atributo como el
    required this.type,//se usara este atributo como contraseña
  });



static UserProfile objJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'] as int,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      type: json['type'] as String,
    );
  }
}
