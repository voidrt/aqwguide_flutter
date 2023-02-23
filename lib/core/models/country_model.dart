class Country {
  Country({this.nota, this.lugaresPopulares});
  final String? nota;
  final List<String>? lugaresPopulares;

  factory Country.fromJSON(Map<String, dynamic> json) {
    return Country(
      nota: json['nota'] as String,
      lugaresPopulares: json['lugaresPopulares'] as List<String>,
    );
  }
}
