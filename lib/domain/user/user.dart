import 'package:meta/meta.dart';

class User {
  User({
    @required this.id,
    @required this.username,
    @required this.name,
    @required this.firstName,
    @required this.lastName,
    @required this.email,
    @required this.url,
    @required this.description,
    @required this.link,
    @required this.locale,
    @required this.nickname,
    @required this.slug,
  });

  final int? id;
  final String? username;
  final String? name;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? url;
  final String? description;
  final String? link;
  final String? locale;
  final String? nickname;
  final String? slug;

  // String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        name: json["name"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        url: json["url"],
        description: json["description"],
        link: json["link"],
        locale: json["locale"],
        nickname: json["nickname"],
        slug: json["slug"],
      );
}
