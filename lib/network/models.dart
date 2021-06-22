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

class postUserotpdataModel {
  String id;
  String name;
  String phone;
  String email;
  String address;
  String otp;
  String date;
  postUserotpdataModel({this.id, this.name,this.address, this.email, this.otp, this.phone, this.date});
}

class catagiryModel {
  final int id;
  final String title;
  final String slug;

  catagiryModel({
    this.id,
    this.title,
    this.slug,
  });

  factory catagiryModel.fromJson(Map<String, dynamic> json) {
    return catagiryModel(
      id: json['id'],
      title: json['title'],
      slug: json['slug'],
    );
  }
}

class cardItemsList {
  final int id;
  final int category;
  final String title;
  final String image;
  final String originalPrice;
  final String price;
  final String description;
  bool ischeck;

  cardItemsList({
    this.id,
    this.title,
    this.category,
    this.image,
    this.originalPrice,
    this.price,
    this.description,
    this.ischeck,
  });

  factory cardItemsList.fromJson(Map<String, dynamic> json) {
    return cardItemsList(
      id: json['id'],
      title: json['title'],
      category: json['category'],
      image: json['image'],
      originalPrice: json['original_price'],
      price: json['discount_price'],
      description: json['description'],
      ischeck: false,
    );
  }
}
