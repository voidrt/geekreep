import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geekreep/interface/widgets/buttons/arrow_back_icon_button.dart';
import 'package:line_icons/line_icons.dart';
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

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 7,
                  sigmaY: 7,
                ),
                child: Image.asset(
                  'assets/images/loginBgWeb.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: Paddings.big,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ArrowBackIconButton(),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: WhiteGeekieIcon(),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Paddings.veryBig,
                    horizontal: Paddings.defaultSize,
                  ),
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
                  hintText: 'Nome de usuario ou email',
                  icon: const Icon(
                    LineIcons.user,
                    color: Colors.white,
                  ),
                  obscureText: false,
                ),
                AppTextField(
                  password,
                  hintText: 'Senha',
                  icon: const Icon(
                    LineIcons.lock,
                    color: Colors.white,
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: Paddings.veryBig,
                ),
                ElevatedButton(
                  child: const Text("Sign in with email+password"),
                  onPressed: () async {
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: "edbracaioli@gmail.com",
                        password: "dudu1203",
                      );
                    } catch (e) {
                      print("Error signing in user: $e");
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Error signing in user: $e")));
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
