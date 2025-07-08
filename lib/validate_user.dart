
class UserValidator {
  static final List<Map<String, String>> _users = [
    {"email": "mughalwajahat77@gmail.com", "password": "12345678"},
    {"email": "ahmad@gmail.com", "password": "hello123"},
    {"email": "wajahatali.ncba@gmail.com", "password": "test123"},
    {"email": "ali123@gmail.com", "password": "admin123"},
  ];

  static bool isValidUser(String email, String password) {
    return _users.any((user) =>
    user["email"] == email.trim() &&
        user["password"] == password.trim());
  }
}



