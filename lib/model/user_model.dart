class User {
  final String id;
  final String fullname;
  final String email;
  final String userRole;

  User({this.id, this.email, this.fullname, this.userRole});

  User.fromData(Map<String, dynamic> data)
      : id = data['id'],
        fullname = data['fullname'],
        email = data['email'],
        userRole = data['userRole'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fullname': fullname,
      'email': email,
      'userRole': userRole,
    };
  }
}
