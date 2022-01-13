class Location {
  String province, city, district, street, postal;

  Location({
    required this.province,
    required this.city,
    required this.district,
    required this.postal,
    required this.street,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
        province: json["province"],
        city: json["city"],
        district: json["district"],
        postal: json["postal"],
        street: json["street"]);
  }
}

class Office {
  String id, name;
  Location location;

  Office({
    required this.id,
    required this.name,
    required this.location,
  });

  factory Office.fromJson(Map<String, dynamic> json) => Office(
        id: json["id"].toString(),
        name: json["name"].toString(),
        location: Location.fromJson(json['location']),
      );

  Map<String, dynamic> toJson() => {
        'province': location.province,
        'city': location.city,
        'district': location.district,
        'postal': location.postal,
        'street': location.street
      };
}
