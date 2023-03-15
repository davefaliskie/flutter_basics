class User {
  final String name;
  final DateTime login;
  final Duration duration;

  User({
    required this.name,
    required this.login,
    required this.duration,
  });

  factory User.fromJson(dynamic jsonData) {
    return User(
      name: jsonData?["name"],
      login: DateTime.parse(jsonData?["login"]),
      duration: Duration(seconds: jsonData?["durationSec"]),
    );
  }
}
