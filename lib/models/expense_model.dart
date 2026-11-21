class ExpenseModel {
  final int? id;
  final int tripId;
  final String title;
  final double amount;
  final String category; // Օրինակ՝ 'Տրանսպորտ', 'Հյուրանոց', 'Սնունդ', 'Ժամանց'
  final DateTime date;

  const ExpenseModel({
    this.id,
    required this.tripId,
    required this.title,
    required this.amount,
    required this.category,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'tripId': tripId,
      'title': title,
      'amount': amount,
      'category': category,
      'date': date.toIso8601String(),
    };
  }

  factory ExpenseModel.fromMap(Map<String, dynamic> map) {
    return ExpenseModel(
      id: map['id'] as int?,
      tripId: map['tripId'] as int,
      title: map['title'] ?? '',
      amount: (map['amount'] as num).toDouble(),
      category: map['category'] ?? 'Այլ',
      date: DateTime.parse(map['date'] as String),
    );
  }
}