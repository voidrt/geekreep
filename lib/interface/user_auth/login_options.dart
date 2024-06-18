import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geekreep/interface/widgets/buttons/standard_button.dart';
import 'package:geekreep/interface/widgets/icon_widgets/white_geekie_icon.dart';
import 'package:geekreep/interface/widgets/text_widgets/semibold_text.dart';
import 'package:geekreep/theme/paddings.dart';
import 'package:go_router/go_router.dart';

class LoginOptionsScreen extends ConsumerWidget {
  const LoginOptionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  padding: EdgeInsets.symmetric(
                    vertical: Paddings.extraBig,
                  ),
                  child: SemiBoldHeadlineText(
                    text: 'Acesse agora',
                    colour: Colors.white,
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
                SemiBoldStandardText(
                  text: 'ou',
                  padding: Paddings.extraSmall,
                  color: Theme.of(context).colorScheme.background,
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
