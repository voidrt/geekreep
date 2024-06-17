import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geekreep/interface/widgets/buttons/standard_button.dart';
import 'package:geekreep/interface/widgets/text_widgets/semibold_text.dart';
import 'package:geekreep/theme/dark/colours.dart';
import 'package:geekreep/theme/paddings.dart';
import 'package:go_router/go_router.dart';

class LoginOptionsScreen extends StatelessWidget {
  const LoginOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                Container(
                  margin: const EdgeInsets.only(
                    top: Paddings.veryBig,
                    bottom: Paddings.big,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/logoGeekieOneBranco.svg',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Paddings.extraBig,
                  ),
                  child: Text(
                    'Acesse agora',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Exo',
                      color: DarkThemeColours.textColor,
                    ),
                  ),
                ),
                StandardButton(
                  onTap: () {
                    context.goNamed('Geekie Login');
                  },
                  leadingIcon: 'geekieOneRedLogo.svg',
                  text: 'Com uma conta Geekie One',
                ),
                StandardButton(
                  onTap: () {},
                  leadingIcon: 'qrcode.svg',
                  text: 'Com QR Code - até 5º ano',
                ),
                const SemiBoldStandardText(
                  text: 'ou',
                  padding: Paddings.extraSmall,
                ),
                StandardButton(
                  onTap: () {},
                  leadingIcon: 'googleLogo.svg',
                  text: 'Acessar com Google',
                ),
                StandardButton(
                  onTap: () {},
                  leadingIcon: 'appleLogo.svg',
                  text: 'Acessar com Apple',
                ),
                StandardButton(
                  onTap: () {},
                  leadingIcon: 'microsoftLogo.svg',
                  text: 'Acessar com Microsoft',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: Paddings.small),
                  child: Divider(
                    indent: Paddings.veryBig,
                    endIndent: Paddings.veryBig,
                  ),
                ),
                StandardButton(
                  onTap: () {},
                  text: 'Ativar novo material',
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
