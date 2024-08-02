import 'dart:convert';

class User {
  final String id;
  final String name;
  final String email;
  final String token;
  final String password;
  final String course;
  final String studentid;
  final String college;
  final String year;
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.token,
    required this.password,
    required this.course,
    required this.studentid,
    required this.college,
    required this.year,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'token': token,
      'password': password,
      'course': course,
      'studentid': studentid,
      'college': college,
      'year': year,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      token: map['token'] ?? '',
      password: map['password'] ?? '',
      course: map['course'] ?? '',
      studentid: map['studentid'] ?? '',
      college: map['college'] ?? '',
      year: map['year'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
