import 'package:flutter/material.dart';

class KeyboardWidget extends StatelessWidget {
  const KeyboardWidget({
    super.key,
    required this.child,
    this.isCloseOnTapOutSide = true,
  });

  final Widget child;
  final bool isCloseOnTapOutSide;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
      isCloseOnTapOutSide ? () => FocusScope.of(context).unfocus() : null,
      child: child,
    );
  }
}
