class Promotion {
  int id;
  String title;
  String subtitle;
  String description;
  String image;
  int quantity;
  int userProfileId; // Nuevo atributo

  Promotion({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
    required this.quantity,
    required this.userProfileId, // Incluye el nuevo atributo en el constructor
  });

  static Promotion objJson(Map<String, dynamic> json) {
    return Promotion(
      id: json['id'] as int,
      title: json['title'] as String,
      subtitle: json['subTitle'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      quantity: json['quantity'] as int,
      userProfileId: json['userProfile']['id'] as int, // Asigna el ID del userProfile
    );
  }
}
