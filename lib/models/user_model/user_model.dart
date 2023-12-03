class User {
  final String imageUrl;
  final String title;
  final String first;
  final String last;

  User({
    required this.title,
    required this.first,
    required this.last,
    required this.imageUrl,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      imageUrl: map['picture']['medium'] ?? '',
      first: map['name']['first'] ?? '',
      last: map['name']['last'] ?? '',
      title: map['name']['title'] ?? '',
    );
  }
}
