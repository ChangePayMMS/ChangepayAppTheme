library esamudaay_themes;

import 'package:flutter/material.dart';

part 'package:esamudaay_themes/color_scheme.dart';
part 'package:esamudaay_themes/theme_constants/theme_constants.dart';
part 'package:esamudaay_themes/theme_constants/consumer_primary_theme.dart';
part 'package:esamudaay_themes/theme_constants/merchant_primary_theme.dart';
part 'package:esamudaay_themes/theme_constants/delivery_primary_theme.dart';
part 'package:esamudaay_themes/theme_constants/color_constants.dart';
part 'package:esamudaay_themes/theme_data.dart';

// For now, we are using the theme data from consumer app only.
// Later we will modify this as per the requirement.

/*

To Create a new Theme =>

  1.  Add a new Value in enum THEME_TYPES. e.g. enum THEME_TYPES { LIGHT , DARK }

  2.  Create a new color class extending AppThemeColors. e.g. DarkThemeColors
  class DarkThemeColors with AppThemeColors {
    @override
    Color get primaryColor => const Color()
    ....
    @override
    Brightness get brightness => Brightness.dark;
  }


To update theme =>
  CustomTheme.instanceOf(buildContext).changeTheme(key);

To access theme data =>

  for colors and text styles :
  color : CustomTheme.of(context).colors.primaryColor;
  style : CustomTheme.of(context).textStyles.headline6;
  otherwise
  appBarTheme : Theme.of(context).appBarTheme.

*/

class _EsamudaayThemeInheritedWidget extends InheritedWidget {
  final _EsamudaayThemeState data;

  _EsamudaayThemeInheritedWidget({
    required this.data,
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_EsamudaayThemeInheritedWidget oldWidget) {
    return true;
  }
}

class EsamudaayTheme extends StatefulWidget {
  final Widget child;
  final EsamudaayThemeData esamudaayThemeData;

  const EsamudaayTheme({
    Key? key,
    required this.esamudaayThemeData,
    required this.child,
  }) : super(key: key);

  @override
  _EsamudaayThemeState createState() => new _EsamudaayThemeState();

  // method to access the theme data
  static EsamudaayThemeData of(BuildContext context) {
    _EsamudaayThemeInheritedWidget? inherited = context
        .dependOnInheritedWidgetOfExactType<_EsamudaayThemeInheritedWidget>();

    assert(inherited != null, 'No theme found in context');

    return inherited!.data.theme;
  }

  // method to update the theme data
  static _EsamudaayThemeState instanceOf(BuildContext context) {
    _EsamudaayThemeInheritedWidget? inherited = (context
        .dependOnInheritedWidgetOfExactType<_EsamudaayThemeInheritedWidget>());

    assert(inherited != null, 'No theme found in context');

    return inherited!.data;
  }
}

class _EsamudaayThemeState extends State<EsamudaayTheme> {
  late final EsamudaayThemeData _theme;
  EsamudaayThemeData get theme => _theme;

  @override
  void initState() {
    _theme = widget.esamudaayThemeData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new _EsamudaayThemeInheritedWidget(
      data: this,
      child: widget.child,
    );
  }
}
