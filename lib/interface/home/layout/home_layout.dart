import 'package:flutter/material.dart';
import 'package:geekreep/core/provider/user_authentication_helper.dart';
import 'package:geekreep/interface/widgets/buttons/standard_button.dart';

class HomeScreenLayout extends StatelessWidget {
  const HomeScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('lesgo'),
          StandardButton(
            onTap: () {
              AuthHelper().signOut();
            },
            text: "Sair",
          )
        ],
      ),
    );
  }
}
