part of 'package:esamudaay_themes/esamudaay_themes.dart';

// extension to get colors for light theme.
class _ConsumerPrimaryThemeColors with _AppThemeColors {
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

  @override
  Brightness get brightness => Brightness.light;
}
