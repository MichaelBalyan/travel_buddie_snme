class PackingItemModel {
  final int? id;
  final int tripId;
  final String title;
  final String category; // Օրինակ՝ 'Փաստաթղթեր', 'Հագուստ', 'Տեխնիկա'
  final bool isPacked;

  const PackingItemModel({
    this.id,
    required this.tripId,
    required this.title,
    this.category = 'Ընդհանուր',
    this.isPacked = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'tripId': tripId,
      'title': title,
      'category': category,
      'isPacked': isPacked ? 1 : 0,
    };
  }

  factory PackingItemModel.fromMap(Map<String, dynamic> map) {
    return PackingItemModel(
      id: map['id'] as int?,
      tripId: map['tripId'] as int,
      title: map['title'] ?? '',
      category: map['category'] ?? 'Ընդհանուր',
      isPacked: (map['isPacked'] ?? 0) == 1,
    );
  }

  PackingItemModel copyWith({
    int? id,
    int? tripId,
    String? title,
    String? category,
    bool? isPacked,
  }) {
    return PackingItemModel(
      id: id ?? this.id,
      tripId: tripId ?? this.tripId,
      title: title ?? this.title,
      category: category ?? this.category,
      isPacked: isPacked ?? this.isPacked,
    );
  }
}