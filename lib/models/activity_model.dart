class ActivityModel {
  final int? id;
  final int tripId;
  final int dayNumber; // Օրինակ՝ Օր 1, Օր 2
  final String title;
  final String time; // Օրինակ՝ "10:30"
  final String? location;
  final String? notes;
  final bool isDone;

  const ActivityModel({
    this.id,
    required this.tripId,
    required this.dayNumber,
    required this.title,
    required this.time,
    this.location,
    this.notes,
    this.isDone = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'tripId': tripId,
      'dayNumber': dayNumber,
      'title': title,
      'time': time,
      'location': location,
      'notes': notes,
      'isDone': isDone ? 1 : 0,
    };
  }

  factory ActivityModel.fromMap(Map<String, dynamic> map) {
    return ActivityModel(
      id: map['id'] as int?,
      tripId: map['tripId'] as int,
      dayNumber: map['dayNumber'] as int,
      title: map['title'] ?? '',
      time: map['time'] ?? '',
      location: map['location'] as String?,
      notes: map['notes'] as String?,
      isDone: (map['isDone'] ?? 0) == 1,
    );
  }

  ActivityModel copyWith({
    int? id,
    int? tripId,
    int? dayNumber,
    String? title,
    String? time,
    String? location,
    String? notes,
    bool? isDone,
  }) {
    return ActivityModel(
      id: id ?? this.id,
      tripId: tripId ?? this.tripId,
      dayNumber: dayNumber ?? this.dayNumber,
      title: title ?? this.title,
      time: time ?? this.time,
      location: location ?? this.location,
      notes: notes ?? this.notes,
      isDone: isDone ?? this.isDone,
    );
  }
}