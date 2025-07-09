import 'package:flutter/foundation.dart';

class UserProvider with ChangeNotifier {
  String? _username;

  String? get username => _username;
String? _role;

  String? get role => _role;

  void setUsername(String username) {
    _username = username;
    notifyListeners();
  }

  void clearUsername() {
    _username = null;
    notifyListeners();
  }
   void setUserRole(String role) {
    _role = role;
    notifyListeners();
  }

  void clearUserRole() {
    _role = null;
    notifyListeners();
  }
}
// This provider can be used to manage the username state across the app.
// You can use it in your widgets by wrapping them with ChangeNotifierProvider
// and accessing the username using Provider.of<UserProvider>(context).
// Example usage in a widget:
//
// ChangeNotifierProvider(
//   create: (context) => UserProvider(),   
//   child: YourWidget(),
// );