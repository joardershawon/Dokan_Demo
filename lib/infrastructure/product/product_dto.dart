import 'package:meta/meta.dart';
import 'dart:convert';

class Product {
  Product({
    @required this.id,
    @required this.name,
    @required this.dateCreated,
    @required this.dateCreatedGmt,
    @required this.featured,
    @required this.description,
    @required this.shortDescription,
    @required this.price,
    @required this.regularPrice,
    @required this.salePrice,
    @required this.averageRating,
    @required this.ratingCount,
    @required this.images,
    @required this.links,
  });

  final int? id;
  final String? name;
  final DateTime? dateCreated;
  final DateTime? dateCreatedGmt;
  final bool? featured;
  final String? description;
  final String? shortDescription;
  final String? price;
  final String? regularPrice;
  final String? salePrice;
  final String? averageRating;
  final int? ratingCount;
  final List<Image>? images;
  final Links? links;

  Product copyWith({
    int? id,
    String? name,
    DateTime? dateCreated,
    DateTime? dateCreatedGmt,
    bool? featured,
    String? description,
    String? shortDescription,
    String? price,
    String? regularPrice,
    String? salePrice,
    String? averageRating,
    int? ratingCount,
    List<Image>? images,
    Links? links,
  }) =>
      Product(
        id: id ?? this.id,
        name: name ?? this.name,
        dateCreated: dateCreated ?? this.dateCreated,
        dateCreatedGmt: dateCreatedGmt ?? this.dateCreatedGmt,
        featured: featured ?? this.featured,
        description: description ?? this.description,
        shortDescription: shortDescription ?? this.shortDescription,
        price: price ?? this.price,
        regularPrice: regularPrice ?? this.regularPrice,
        salePrice: salePrice ?? this.salePrice,
        averageRating: averageRating ?? this.averageRating,
        ratingCount: ratingCount ?? this.ratingCount,
        images: images ?? this.images,
        links: links ?? this.links,
      );

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        dateCreated: DateTime.parse(json["date_created"]),
        dateCreatedGmt: DateTime.parse(json["date_created_gmt"]),
        featured: json["featured"],
        description: json["description"],
        shortDescription: json["short_description"],
        price: json["price"],
        regularPrice: json["regular_price"],
        salePrice: json["sale_price"],
        averageRating: json["average_rating"],
        ratingCount: json["rating_count"],
        images: List<Image>.from(json["images"].map((x) => Image.fromMap(x))),
        links: Links.fromMap(json["_links"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "date_created": dateCreated!.toIso8601String(),
        "date_created_gmt": dateCreatedGmt!.toIso8601String(),
        "featured": featured,
        "description": description,
        "short_description": shortDescription,
        "price": price,
        "regular_price": regularPrice,
        "sale_price": salePrice,
        "average_rating": averageRating,
        "rating_count": ratingCount,
        "images": List<dynamic>.from(images!.map((x) => x.toMap())),
        "_links": links!.toMap(),
      };
}

class Image {
  Image({
    @required this.id,
    @required this.dateCreated,
    @required this.dateCreatedGmt,
    @required this.dateModified,
    @required this.dateModifiedGmt,
    @required this.src,
    @required this.name,
    @required this.alt,
    @required this.position,
  });

  final int? id;
  final DateTime? dateCreated;
  final DateTime? dateCreatedGmt;
  final DateTime? dateModified;
  final DateTime? dateModifiedGmt;
  final String? src;
  final String? name;
  final String? alt;
  final int? position;

  Image copyWith({
    int? id,
    DateTime? dateCreated,
    DateTime? dateCreatedGmt,
    DateTime? dateModified,
    DateTime? dateModifiedGmt,
    String? src,
    String? name,
    String? alt,
    int? position,
  }) =>
      Image(
        id: id ?? this.id,
        dateCreated: dateCreated ?? this.dateCreated,
        dateCreatedGmt: dateCreatedGmt ?? this.dateCreatedGmt,
        dateModified: dateModified ?? this.dateModified,
        dateModifiedGmt: dateModifiedGmt ?? this.dateModifiedGmt,
        src: src ?? this.src,
        name: name ?? this.name,
        alt: alt ?? this.alt,
        position: position ?? this.position,
      );

  factory Image.fromJson(String str) => Image.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Image.fromMap(Map<String, dynamic> json) => Image(
        id: json["id"],
        dateCreated: DateTime.parse(json["date_created"]),
        dateCreatedGmt: DateTime.parse(json["date_created_gmt"]),
        dateModified: DateTime.parse(json["date_modified"]),
        dateModifiedGmt: DateTime.parse(json["date_modified_gmt"]),
        src: json["src"],
        name: json["name"],
        alt: json["alt"],
        position: json["position"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "date_created": dateCreated!.toIso8601String(),
        "date_created_gmt": dateCreatedGmt!.toIso8601String(),
        "date_modified": dateModified!.toIso8601String(),
        "date_modified_gmt": dateModifiedGmt!.toIso8601String(),
        "src": src,
        "name": name,
        "alt": alt,
        "position": position,
      };
}

class Links {
  Links({
    @required this.self,
    @required this.collection,
  });

  final List<Collection>? self;
  final List<Collection>? collection;

  Links copyWith({
    List<Collection>? self,
    List<Collection>? collection,
  }) =>
      Links(
        self: self ?? this.self,
        collection: collection ?? this.collection,
      );

  factory Links.fromJson(String str) => Links.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Links.fromMap(Map<String, dynamic> json) => Links(
        self: List<Collection>.from(json["self"].map((x) => Collection.fromMap(x))),
        collection: List<Collection>.from(json["collection"].map((x) => Collection.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "self": List<dynamic>.from(self!.map((x) => x.toMap())),
        "collection": List<dynamic>.from(collection!.map((x) => x.toMap())),
      };
}

class Collection {
  Collection({
    @required this.href,
  });

  final String? href;

  Collection copyWith({
    String? href,
  }) =>
      Collection(
        href: href ?? this.href,
      );

  factory Collection.fromJson(String str) => Collection.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Collection.fromMap(Map<String, dynamic> json) => Collection(
        href: json["href"],
      );

  Map<String, dynamic> toMap() => {
        "href": href,
      };
}
