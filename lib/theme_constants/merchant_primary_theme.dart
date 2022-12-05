part of 'package:esamudaay_themes/esamudaay_themes.dart';

// extension to get colors for light theme.
class _MerchantPrimaryThemeColors with _AppThemeColors {
  @override
  Color get primaryColor => _ColorConstants.brandViolet;
  @override
  Color get secondaryColor => _ColorConstants.brandPink;
  @override
  Color get positiveColor => _ColorConstants.positiveGreen;
  @override
  Color get textColor => _ColorConstants.darkBlack;
  @override
  Color get textColorDarker => _ColorConstants.pureBlack;
  @override
  Color get disabledAreaColor => _ColorConstants.darkGrey;
  @override
  Color get placeHolderColor => _ColorConstants.lightGrey;
  @override
  Color get backgroundColor => _ColorConstants.pureWhite;
  @override
  Color get warningColor => _ColorConstants.brandOrange;
  @override
  Color get storeCoreColor => _ColorConstants.brandOrange;
  @override
  Color get shadowColor => const Color(0x0d242424);
  @override
  Color get dividerColor => const Color(0xFFe8e8e8);
  @override
  Color get storeInfoColor => const Color(0xffdd1d94);

  ///16 here refers to opacity which is 16%
  @override
  Color get shadowColor16 => const Color(0x29242424);

  @override
  Color get categoryTileTextUnderlay => const Color(0xffe6ffffff);

  ///New colors added for the design system being implemented

  @override
  Color get primaryPurpleDark2 => const Color(0xff211438);

  @override
  Color get primaryPurpleDark1 => const Color(0xff4e3083);

  @override
  Color get primaryPurpleMain => const Color(0xff5f3a9f);

  @override
  Color get primaryPurpleLight1 => const Color(0xffb7a2dd);

  @override
  Color get primaryPurpleLight2 => const Color(0xfff1ecf8);

  @override
  Color get secondaryMain => const Color(0xfff05c2b);

  @override
  Color get neutralDark100 => const Color(0xff333333);

  @override
  Color get neutralMain => const Color(0xff4d4d4d);

  @override
  Color get neutralLight100 => const Color(0xff666666);

  @override
  Color get neutralLight200 => const Color(0xff808080);

  @override
  Color get neutralLight300 => const Color(0xff999999);

  @override
  Color get neutralLight400 => const Color(0xffb3b3b3);

  @override
  Color get neutralLight500 => const Color(0xffe6e6e6);

  @override
  Color get semanticGreenIcon => const Color(0xff31b11b);

  @override
  Brightness get brightness => Brightness.light;
}
