enum Gender {
  male,
  female,
  undefined
}

class User {
  late String id;
  late String username;
  late String fname;
  late String lname;
  late String address;
  late String email;
  late Gender gender;
  late num age;
  late String password;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.fname,
    required this.lname,
    required this.age,
    required this.gender,
    required this.password
  });
}