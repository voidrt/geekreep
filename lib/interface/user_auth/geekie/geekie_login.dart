import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geekreep/core/provider/user_authentication_helper.dart';
import 'package:geekreep/interface/user_auth/widgets/text_field.dart';
import 'package:geekreep/interface/widgets/buttons/standard_button.dart';
import 'package:geekreep/interface/widgets/icon_widgets/white_geekie_icon.dart';
import 'package:geekreep/interface/widgets/text_widgets/semibold_text.dart';
import 'package:geekreep/theme/paddings.dart';

class GeekieLoginScreen extends StatelessWidget {
  const GeekieLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userEmail = TextEditingController();
    final password = TextEditingController();
    final authHelper = AuthHelper();

    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Image.asset(
                  'assets/images/loginBgMobile.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Column(
              children: [
                const WhiteGeekieIcon(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: Paddings.veryBig),
                  child: Align(
                    alignment: Alignment.center,
                    child: SemiBoldHeadlineText(
                      text: 'Acessar com uma conta Geekie One',
                      colour: Colors.white,
                    ),
                  ),
                ),
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
          ],
        ),
      ),
    );
  }
}
