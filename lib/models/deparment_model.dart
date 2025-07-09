class Department {
  late String? id;
  late String? name;
  late String? description;
  late String? image;

  Department({this.id, this.name, this.description, this.image});

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      image: json['image'],
    );
  }
}
