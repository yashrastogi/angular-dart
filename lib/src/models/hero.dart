class Hero {
  final int id;
  String name;

  Hero(this.id, this.name);

  factory Hero.fromJson(Map<String, dynamic> json) => Hero(int.parse(json['id']), json['name']);
}
