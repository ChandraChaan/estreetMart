class bannerModel {
  final int id;
  final String title;
  final String image;

  bannerModel({
    this.id,
    this.title,
    this.image,
  });

  factory bannerModel.fromJson(Map<String, dynamic> json) {
    return bannerModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
    );
  }
}