class UsersModels {
  final String? username;
  final String? email;
  final String? id;

  const UsersModels({
    this.username,
    this.email,
    this.id,
  });

  factory UsersModels.fromJson(Map<String, dynamic> json) {
    return UsersModels(
      username: json["username"] as String?,
      email: json["email"] as String?,
      id: json["id"] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "username": username,
      "email": email,
      "id": id,
    };
  }
}
