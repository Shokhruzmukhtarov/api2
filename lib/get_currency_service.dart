class Welcome {
  Welcome({
    required this.error,
    required this.category,
    required this.type,
    required this.setup,
    required this.delivery,
    required this.lang,
    required this.id,
    required this.safe,
  });

  final bool error;
  final String category;
  final String type;
  final String setup;
  final String delivery;
  final String lang;
  final int id;
  final bool safe;

  factory Welcome.fromJson(Map<String, dynamic> json) =>
      Welcome(
        error: json["error"] as bool? ?? false,
        category: json["category"] as String? ?? "",
        type: json["type"] as String? ?? "",
        setup: json["setup"] as String? ?? "",
        delivery: json["delivery"] as String? ?? "",
        lang: json["lang"] as String? ?? "",
        id: json["id"] as int? ?? 0,
        safe: json["safe"] as bool? ?? false,
      );
}