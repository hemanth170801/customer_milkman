import 'package:customer_milkman/provider/root_provider_widget.dart';
import 'package:customer_milkman/registration/welcome_content.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RootProvidersWidget(
      child:Sizer(
        builder: (context, orientation, deviceType) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: WelcomeContent(),
          );
        },
      ),
    );
  }
}