import 'package:chat_app_firebase/screens/home_screen/presentation/page/home_screen.dart';
import 'package:chat_app_firebase/screens/login_screen/presentation/page/LoginScree.dart';
import 'package:chat_app_firebase/utils/size_utils/size_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    if (_auth.currentUser != null) {
      return HomeScreen();
    } else {
      return LoginScreen();
    }
  }
}
