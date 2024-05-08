import 'package:market_of_ment/dto/login_dto.dart';
import 'package:market_of_ment/dto/user_dto.dart';
import 'package:uuid/uuid.dart';
import '../entitiy/user.dart';


class UserRepository {

  static UserRepository? _instance;
  late List<User> users;
  bool isAuthorized = false;
  late User authorizedUser;

  UserRepository._() {
    users = [];
    initTestUser();
  }

  static UserRepository getInstance() {
    _instance ??= UserRepository._();
    return _instance!;
  }

  void initTestUser() {

    User user = User(
      id: Uuid().v1(),
      username: 'q',
      password: 'q',
      email: 'admin@mail.ru',
      fname: 'admin',
      lname: 'admin',
      gender: Gender.undefined,
      age: 22,
    );

    users.add(user);
  }

  void add(UserDto dto) {
    User newUser = User(
        id:Uuid().v1(),
        username: dto.username,
        email: dto.email,
        fname: dto.fname,
        lname: dto.lname,
        age: dto.age,
        gender: dto.gender,
        password: dto.password
    );

    users.add(newUser);
  }

  bool check(LoginDto dto) {
    for (User user in users) {
      if (user.username == dto.username && user.password == dto.password) {
        isAuthorized = true;
        authorizedUser = user;
        return true;
      }
    }
    return false;
  }

  User? findByUsername(String username) {
    for (User user in users) {
      if (user.username == username) {
        return user;
      }
    }
  }

}