part of 'package:esamudaay_themes/esamudaay_themes.dart';

// Add a new value here for each new theme.
enum THEME_TYPES {
  MERCHANT_APP_PRIMARY_THEME,
  CONSUMER_APP_PRIMARY_THEME,
  DELIVERY_APP_PRIMARY_THEME,
}

class EsamudaayThemeData {
  // Creating custom colorScheme and textTheme
  // so that , we can use more meaningful names for colors and textstyles defined in theme data.
  // also we can avoid overriding the old screen's style variables while using dynamic values for new screens.
  late final _AppThemeColors colors;
  late final _AppTextStyles textStyles;
  late final ThemeData themeData;

  EsamudaayThemeData(THEME_TYPES themeTypes) {
    // check the themeTypes and pass the AppThemeColors accordingly.
    colors = themeTypes == THEME_TYPES.CONSUMER_APP_PRIMARY_THEME
        ? _ConsumerPrimaryThemeColors()
        : themeTypes == THEME_TYPES.MERCHANT_APP_PRIMARY_THEME
            ? _MerchantPrimaryThemeColors()
            : _DeliveryPrimaryThemeColors();

    // pass the above color in AppTextStyles to get respective textTheme.
    textStyles = _AppTextStyles(colors);

    // defining text theme so that some styles can be defined globally . e.g. appBarTheme, cardTheme etc.
    themeData = ThemeData(
      brightness: colors.brightness,
      scaffoldBackgroundColor: colors.backgroundColor,
      primaryColor: colors.primaryColor,
      appBarTheme: AppBarTheme(
        color: colors.backgroundColor,
        iconTheme: IconThemeData(
          color: colors.primaryColor,
        ),
      ),
    );
  }
}
