part of 'package:esamudaay_themes/esamudaay_themes.dart';

// class contains all the colors needed throughout the app.
// add more colors here if needed and also override new colors in extended classes.

abstract class _AppThemeColors {
  Color get primaryColor;

  Color get secondaryColor;

  Color get placeHolderColor;

  Color get backgroundColor;

  Color get positiveColor;

  Color get textColor;

  Color get textColorDarker;

  Color get disabledAreaColor;

  Color get warningColor;

  Color get shadowColor;

  Color get storeCoreColor;

  Color get shadowColor16;

  Color get categoryTileTextUnderlay;

  Color get dividerColor;

  Color get storeInfoColor;

  Color get primaryPurpleDark2;

  Color get primaryPurpleDark1;

  Color get primaryPurpleMain;

  Color get primaryPurpleLight1;

  Color get primaryPurpleLight2;

  Color get secondaryMain;

  Color get neutralDark100;

  Color get neutralMain;

  Color get neutralLight100;

  Color get neutralLight200;

  Color get neutralLight300;

  Color get neutralLight400;

  Color get neutralLight500;

  Color get semanticGreenIcon;

  Brightness get brightness;
}

// define all the font families used throughout the app.
class _AppFontFamily {
  static const String archivo = "Archivo";

  //static const String avenir = "Avenir";
  static const String lato = "Lato";
}

// text styles should be similar in all themes except the text color.
// pass significant AppThemeColors to get respective text styles.

///Removed the [.toFont] method calls. They were leading to different sizes for my
///devices. Compared to other elements, fonts were smaller and weren't coming out well.
///If this still leads to noticeable issues on devices, then we'll find an optimum solution

class _AppTextStyles {
  final _AppThemeColors themeColors;

  _AppTextStyles(this.themeColors);

  TextStyle get merchantCardTitle => TextStyle(
        color: themeColors.primaryColor,
        fontSize: 24,
        fontWeight: FontWeight.w700,
        fontFamily: _AppFontFamily.archivo,
      );

  TextStyle get topTileTitle => TextStyle(
        color: themeColors.textColor,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontFamily: _AppFontFamily.archivo,
        height: 1.1,
      );

  TextStyle get sectionHeading1 => TextStyle(
        color: themeColors.primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: _AppFontFamily.archivo,
      );

  TextStyle get sectionHeading1Regular => sectionHeading1.copyWith(
        color: themeColors.textColor,
        fontWeight: FontWeight.w400,
      );

  TextStyle get sectionHeading2 => TextStyle(
        color: themeColors.textColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: _AppFontFamily.lato,
        height: 1.18,
      );

  TextStyle get sectionHeading2Secondary => sectionHeading2.copyWith(
        color: themeColors.secondaryColor,
      );

  TextStyle get sectionHeading2Primary =>
      sectionHeading2.copyWith(color: themeColors.primaryColor);

  TextStyle get sectionHeading3 => TextStyle(
        color: themeColors.backgroundColor,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        fontFamily: _AppFontFamily.lato,
        height: 1.2,
      );

  TextStyle get cardTitle => TextStyle(
        color: themeColors.textColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: _AppFontFamily.lato,
        height: 1.21,
      );

  TextStyle get cardTitleFaded => cardTitle.copyWith(
        color: themeColors.disabledAreaColor,
      );

  TextStyle get cardTitleSecondary => cardTitle.copyWith(
        color: themeColors.secondaryColor,
      );

  TextStyle get cardTitlePrimary => cardTitle.copyWith(
        color: themeColors.primaryColor,
      );

  TextStyle get body1 => TextStyle(
        color: themeColors.textColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: _AppFontFamily.lato,
        height: 1.25,
      );

  TextStyle get body1Faded => body1.copyWith(
        color: themeColors.disabledAreaColor,
      );

  TextStyle get body1FadedWithDottedUnderline => body1.copyWith(
        // As there is no option available to give space between underline and text,
        // this is a hack to add some space for the same.
        shadows: [
          Shadow(
            color: themeColors.disabledAreaColor,
            offset: Offset(0, -4),
          )
        ],
        color: Colors.transparent,
        decoration: TextDecoration.underline,
        decorationColor: themeColors.disabledAreaColor,
        decorationThickness: 2,
        decorationStyle: TextDecorationStyle.dashed,
      );

  TextStyle get buttonText2 => TextStyle(
        color: themeColors.primaryColor,
        fontSize: 10,
        fontWeight: FontWeight.w700,
        fontFamily: _AppFontFamily.lato,
        height: 1.2,
      );

  TextStyle get body2 => TextStyle(
        color: themeColors.textColorDarker,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        fontFamily: _AppFontFamily.lato,
        height: 1.2,
      );

  TextStyle get body2Faded => body2.copyWith(
        color: themeColors.disabledAreaColor,
      );

  TextStyle get body2Secondary => body2.copyWith(
        color: themeColors.warningColor,
        fontWeight: FontWeight.bold,
      );

  TextStyle get body2BoldPrimary => body2.copyWith(
        color: themeColors.primaryColor,
        fontWeight: FontWeight.w600,
      );

  TextStyle get bottomMenu => TextStyle(
        color: themeColors.primaryColor,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        fontFamily: _AppFontFamily.lato,
        height: 1.2,
      );

  ///New text styles added after design system changes

  TextStyle get heading1 => TextStyle(
        fontSize: 16,
        fontFamily: _AppFontFamily.lato,
        fontWeight: FontWeight.w700,
        height: 1.25,
      );

  TextStyle get heading2 => TextStyle(
    fontSize: 16,
    fontFamily: _AppFontFamily.lato,
    fontWeight: FontWeight.w700,
    height: 1.25,
  );

  TextStyle get heading3 => TextStyle(
    fontSize: 16,
    fontFamily: _AppFontFamily.lato,
    fontWeight: FontWeight.w700,
    height: 1.25,
  );

  TextStyle get headerSemiBold1 => TextStyle(
        fontSize: 16,
        fontFamily: _AppFontFamily.lato,
        fontWeight: FontWeight.w600,
        height: 1.25,
      );

  TextStyle get headerSemiBold2 => TextStyle(
    fontSize: 14,
    fontFamily: _AppFontFamily.lato,
    fontWeight: FontWeight.w600,
    height: 20/14,
  );

  TextStyle get headerSemiBold3 => TextStyle(
    fontSize: 12,
    fontFamily: _AppFontFamily.lato,
    fontWeight: FontWeight.w600,
    height: 16/12,
  );


}
