import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:paxnote/models/user.dart';
import 'package:paxnote/utils/constants.dart';
import 'package:paxnote/utils/utils.dart';
// import 'package:paxnote/util/utils.dart';

class AuthService {
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
        id: '',
        name: name,
        password: password,
        email: email,
        token: '',
      );
      http.Response res = await http.post(
          Uri.parse('${Constants.uri}/api/signup'),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          });
      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(
              context, 'Account Created! Log in with the same Credentials');
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
