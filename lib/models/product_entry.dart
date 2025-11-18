// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String id;
    String name;
    int price;
    String category;
    String description;
    int? userId;
    String thumbnail;
    bool isFeatured;
    double rating;

    ProductEntry({
        required this.id,
        required this.name,
        required this.price,
        required this.category,
        required this.description,
        required this.userId,
        required this.thumbnail,
        required this.isFeatured,
        required this.rating,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        category: json["category"],
        description: json["description"],
        userId: json["user_id"],
        thumbnail: json["thumbnail"],
        isFeatured: json["is_featured"],
        rating: json["rating"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "category": category,
        "description": description,
        "user_id": userId,
        "thumbnail": thumbnail,
        "is_featured": isFeatured,
        "rating": rating,
    };
}
