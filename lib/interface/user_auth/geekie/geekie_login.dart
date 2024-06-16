import 'package:flutter/material.dart';
import 'package:geekreep/core/provider/user_authentication_helper.dart';
import 'package:geekreep/interface/user_auth/widgets/text_field.dart';
import 'package:geekreep/interface/widgets/standard_button.dart';
import 'package:geekreep/theme/paddings.dart';

class GeekieLoginScreen extends StatelessWidget {
  const GeekieLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userEmail = TextEditingController();
    final password = TextEditingController();
    final authHelper = AuthHelper();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              AppTextField(
                userEmail,
                hintText: 'Usuario',
                obscureText: false,
              ),
              AppTextField(
                password,
                hintText: 'Senha',
                obscureText: true,
              ),
              StandardButton(
                margin: Paddings.big,
                text: 'Entrar',
                onTap: () {
                  authHelper.loginWithEmail(
                    email: userEmail.text,
                    password: password.text,
                  );
                },
                roundness: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
