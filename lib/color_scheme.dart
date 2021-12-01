part of 'package:esamudaay_themes/esamudaay_themes.dart';

class AppColorScheme {
  static const Color shadowColor16 = const Color(0x29242424);

  static const Color _brandViolet = const Color(0xFF5f3a9f);

  static const Color _brandPink = const Color(0xFFe1517d);

  static const Color _darkBlack = const Color(0xFF363636);

  static const Color _pureWhite = const Color(0xFFFFFFFF);

  static ColorScheme get colorScheme {
    return ColorScheme(
      primary: _brandViolet,
      primaryVariant: _brandViolet,
      secondary: _brandViolet,
      secondaryVariant: _brandViolet,
      surface: _pureWhite,
      background: _pureWhite,
      error: _brandPink,
      onPrimary: _pureWhite,
      onSecondary: _pureWhite,
      onSurface: _darkBlack,
      onBackground: _darkBlack,
      onError: _pureWhite,
      brightness: Brightness.light,
    );
  }
}