import 'package:customer_milkman/registration/widget/welcome_bodywidget.dart';
import 'package:customer_milkman/registration/widget/welcome_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class WelcomeContent extends StatelessWidget {
  const WelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WelcomeProvider(),
      child: const Scaffold(
        body: WelcomeButtonsWidget(),
      ),
    );
  }
}