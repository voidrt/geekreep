import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geekreep/core/provider/user_authentication_helper.dart';
import 'package:geekreep/interface/home/layout/home_layout.dart';
import 'package:geekreep/interface/user_auth/login_options.dart';

class AuthenticationCheckScreen extends StatefulWidget {
  const AuthenticationCheckScreen({super.key});

  @override
  State<AuthenticationCheckScreen> createState() =>
      _AuthenticationCheckScreenState();
}

class _AuthenticationCheckScreenState extends State<AuthenticationCheckScreen> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: AuthHelper().authStateChanges,
      builder: (context, snapshot) {
        return snapshot.hasData
            ? const HomeScreenLayout()
            : const LoginOptionsScreen();
      },
    );
  }
}
