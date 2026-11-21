class TripModel {
  final int? id;
  final int userId;
  final String title;
  final String destination;
  final DateTime startDate;
  final DateTime endDate;
  final double totalBudget;
  final String? coverImageUrl;
  final bool isCompleted; // true = նախորդ ճանապարհորդություն

  const TripModel({
    this.id,
    required this.userId,
    required this.title,
    required this.destination,
    required this.startDate,
    required this.endDate,
    required this.totalBudget,
    this.coverImageUrl,
    this.isCompleted = false,
  });

  int get durationInDays => endDate.difference(startDate).inDays + 1;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'destination': destination,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
      'totalBudget': totalBudget,
      'coverImageUrl': coverImageUrl,
      'isCompleted': isCompleted ? 1 : 0,
    };
  }

  factory TripModel.fromMap(Map<String, dynamic> map) {
    return TripModel(
      id: map['id'] as int?,
      userId: map['userId'] as int,
      title: map['title'] ?? '',
      destination: map['destination'] ?? '',
      startDate: DateTime.parse(map['startDate'] as String),
      endDate: DateTime.parse(map['endDate'] as String),
      totalBudget: (map['totalBudget'] as num).toDouble(),
      coverImageUrl: map['coverImageUrl'] as String?,
      isCompleted: (map['isCompleted'] ?? 0) == 1,
    );
  }

  TripModel copyWith({
    int? id,
    int? userId,
    String? title,
    String? destination,
    DateTime? startDate,
    DateTime? endDate,
    double? totalBudget,
    String? coverImageUrl,
    bool? isCompleted,
  }) {
    return TripModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      destination: destination ?? this.destination,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      totalBudget: totalBudget ?? this.totalBudget,
      coverImageUrl: coverImageUrl ?? this.coverImageUrl,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}