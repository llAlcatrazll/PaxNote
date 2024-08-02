import 'package:flutter/material.dart';
import 'package:paxnote/models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    id: '66a9c6e312a0990c96663272',
    name: 'Alexis Magaway',
    email: 'alexismagaway911@gmail.com',
    token: '',
    password: 'alexismagaway123',
    course: 'BSCS',
    studentid: '2008-32',
    college: 'CCIS',
    year: '3',
  );
  // User _user = User(
  //   id: '',
  //   name: '',
  //   email: '',
  //   token: '',
  //   password: '',
  //   course: '',
  //   studentid: '',
  //   college: '',
  //   year: '',
  // );

  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(user);
    notifyListeners();
  }

  void setUserFromModel(User user) {
    _user = user;
    notifyListeners();
  }
}
