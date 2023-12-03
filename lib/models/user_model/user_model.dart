// This model represents user data fetched from an API and is used to populate a custom user card on the home screen.
class User {
  // Fields to hold user information.
  final String imageUrl; // Holds the URL for the user's image.
  final String title; // Holds the user's title (Mr., Mrs., etc.).
  final String first; // Holds the user's first name.
  final String last; // Holds the user's last name.

  // Constructor for the User class.
  User({
    required this.title, 
    required this.first, 
    required this.last, 
    required this.imageUrl, 
  });

  // Factory method to create a User instance from a map (typically received JSON data from API).
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      imageUrl: map['picture']['medium'] ?? '',
      first: map['name']['first'] ?? '',
      last: map['name']['last'] ?? '',
      title: map['name']['title'] ?? '',
    );
  }
}
