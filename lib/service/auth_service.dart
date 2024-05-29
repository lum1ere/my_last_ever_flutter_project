import 'package:market_of_ment/entitiy/user.dart';
import 'package:market_of_ment/dto/user_dto.dart';
import 'package:market_of_ment/entitiy/cart.dart';
import 'package:market_of_ment/repositories/user_repository.dart';

class AuthService {
  static AuthService? _instance;
  User? userData;
  bool _authenticated = false;
  late UserRepository _userRepository;
  Cart localCart = Cart();

  AuthService() {
    _userRepository = UserRepository.getInstance();
  }

  static AuthService getInstance() {
    _instance ??= AuthService();
    return _instance!;
  }

  void register(UserDto userData) {
    _userRepository.add(userData);
  }

  bool login(String username, String password) {
    User? user = _userRepository.findByUsername(username);
    if (user != null) {
      if (user.password == password) {
        userData = user;
        _authenticated = true;
        return true;
      }
    }
    return false;
  }

  User? getUserData() {
    return userData;
  }

  Cart getLocalCart() {
    return localCart;
  }

  bool isAuthenticated() {
    return _authenticated;
  }
}
