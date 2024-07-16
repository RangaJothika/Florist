import 'dart:convert';

class Data {
  Flower? flower;

  Data({
    this.flower,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        flower: json["flower"] == null ? null : Flower.fromJson(json["flower"]),
      );

  Map<String, dynamic> toJson() => {
        "flower": flower?.toJson(),
      };
}

class Flower {
  List<String>? color;
  bool? conspicuous;

  Flower({
    this.color,
    this.conspicuous,
  });

  factory Flower.fromJson(Map<String, dynamic> json) => Flower(
        color: json["color"] == null
            ? []
            : List<String>.from(json["color"].map((x) => x)),
        conspicuous: json["conspicuous"],
      );

  Map<String, dynamic> toJson() => {
        "color": color == null ? [] : List<dynamic>.from(color!.map((x) => x)),
        "conspicuous": conspicuous,
      };
}
