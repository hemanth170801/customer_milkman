import 'dart:ui';
import 'package:customer_milkman/theme/widget/theme_helper.dart';

class CustomTextStyles{
  static get titleSmallPrimaryBold => theme.textTheme.titleSmall!.copyWith(
    color: theme.colorScheme.primary,
    fontWeight: FontWeight.w700,
  );
  static get titleSmallTeal300 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.teal300,
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
    color: theme.colorScheme.primary,
  );
}