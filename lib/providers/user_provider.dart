import 'package:flutter/material.dart';
import 'package:paxnote/models/user.dart';

class UserProvider extends ChangeNotifier {
  // to edit user data
  User _user = User(id: '', name: '', email: '', token: '', password: '');

  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(user);
  }

  void setUserFromModel(User user) {
    _user = user;
    notifyListeners();
  }
}
