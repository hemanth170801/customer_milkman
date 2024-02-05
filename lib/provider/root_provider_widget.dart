import 'package:flutter/material.dart';


class RootProvidersWidget extends StatelessWidget {
  const RootProvidersWidget({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return child!;
    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(
    //       lazy: false,
    //       create: (context) => AuthProvider(),
    //     ),
    //   ],
    //   child: child,
    // );
  }
}
