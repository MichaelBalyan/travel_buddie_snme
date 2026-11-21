class PlaceModel {
  final int? id;
  final int userId;
  final String name;
  final String countryOrCity;
  final String? description;
  final String? imageUrl;
  final bool isVisited; // false = ցանկալի վայր, true = արդեն այցելված

  const PlaceModel({
    this.id,
    required this.userId,
    required this.name,
    required this.countryOrCity,
    this.description,
    this.imageUrl,
    this.isVisited = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
      'countryOrCity': countryOrCity,
      'description': description,
      'imageUrl': imageUrl,
      'isVisited': isVisited ? 1 : 0,
    };
  }

  factory PlaceModel.fromMap(Map<String, dynamic> map) {
    return PlaceModel(
      id: map['id'] as int?,
      userId: map['userId'] as int,
      name: map['name'] ?? '',
      countryOrCity: map['countryOrCity'] ?? '',
      description: map['description'] as String?,
      imageUrl: map['imageUrl'] as String?,
      isVisited: (map['isVisited'] ?? 0) == 1,
    );
  }

  PlaceModel copyWith({
    int? id,
    int? userId,
    String? name,
    String? countryOrCity,
    String? description,
    String? imageUrl,
    bool? isVisited,
  }) {
    return PlaceModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      countryOrCity: countryOrCity ?? this.countryOrCity,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      isVisited: isVisited ?? this.isVisited,
    );
  }
}