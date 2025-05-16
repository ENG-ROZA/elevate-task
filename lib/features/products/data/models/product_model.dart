class ProductModel {
  int? id;
  String? title;
  String? description;
  double? price;
  num? discountPercentage;
  double? rating;
  String? image;

  ProductModel({
    this.id,
    this.title,
    this.description,
    this.price,
    this.discountPercentage,
    this.rating,
    this.image,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: json['price'] as double?,
      discountPercentage: json['discountPercentage'] as num?,
      rating: json['rating'] as double?,
      image: json['thumbnail'] as String?,
    );
  }
}
