

class Company {
  String name;
  String catchPhrase;
  String bs;

  Company({required this.name, required this.catchPhrase, required this.bs});

  factory Company.fromJson(Map<String, dynamic> json) {
    final String name = json['name'];
    final String bs = json['catchPhrase'];
    final String catchPhrase = json['bs'];
    return Company(
      name: name,
      bs: bs,
      catchPhrase: catchPhrase,
    );
  }
}
