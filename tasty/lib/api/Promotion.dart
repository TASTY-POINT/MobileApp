class Promotion{
  int id;
  String title;
  String subtitle;
  String description;
  String image;

  Promotion({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
  });
  static Promotion objJson(Map<String,dynamic> json){
    return Promotion(
        id: json['id'] as int,
        title: json['title'] as String,
        subtitle: json['subTitle'] as String,
        description: json['description'] as String,
        image: json['image'] as String);
  }
}