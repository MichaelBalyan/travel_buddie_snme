class UserModel {
  final int? id;
  final String fullName;
  final String email;
  final String? password;

  const UserModel({
    this.id,
    required this.fullName,
    required this.email,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fullName': fullName,
      'email': email,
      'password': password,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as int?,
      fullName: map['fullName'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] as String?,
    );
  }
}