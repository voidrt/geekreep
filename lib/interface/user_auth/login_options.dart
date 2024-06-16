import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geekreep/interface/widgets/standard_button.dart';
import 'package:geekreep/theme/paddings.dart';
import 'package:go_router/go_router.dart';

class LoginOptionsScreen extends StatelessWidget {
  const LoginOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: Paddings.big),
                child: SvgPicture.asset(
                  'assets/icons/logoGeekieOneBranco.svg',
                  alignment: Alignment.center,
                ),
              ),
              const Text(
                'Acesse agora',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w200,
                  fontFamily: 'Exo',
                ),
              ),
              StandardButton(
                onTap: () {
                  context.goNamed('Geekie Login');
                },
                leadingIcon: 'geekieOneRedLogo.svg',
                text: 'Com uma conta Geekie One',
              )
            ],
          ),
        ),
      ),
    );
  }
}
