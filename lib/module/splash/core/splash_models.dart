class SplashUser {
  final String id;
  final String? firstName;
  final String? lastName;
  final String email;

  SplashUser({
    required this.id,
    this.firstName,
    this.lastName,
    required this.email,
  });

  factory SplashUser.fromJson(Map<String, dynamic> json) {
    return SplashUser(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
    };
  }
}
