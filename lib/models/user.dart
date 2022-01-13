class Attributes {
  String firstName, lastName, email, avatar;

  Attributes({
    this.firstName = '',
    this.lastName = '',
    this.email = '',
    this.avatar = '',
  });

  factory Attributes.fromJson(Map<String, dynamic> json) {
    return Attributes(
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      avatar: json['avatar'] ?? 'https://via.placeholder.com/128',
    );
  }
}

class User {
  String id;
  Attributes attributes;

  User({
    required this.id,
    required this.attributes,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"].toString(),
        attributes: Attributes.fromJson(json['attributes']),
      );

  Map<String, dynamic> toJson() => {
        'first_name': attributes.firstName,
        'last_name': attributes.lastName,
        'email': attributes.email,
      };
}
