//https://stackoverflow.com/questions/49172746/is-it-possible-extend-themedata-in-flutter
//https://github.com/maxim-saplin/dikt/blob/master/lib/ui/themes.dart
//thank Maxim for your help to solve

import 'package:flutter/material.dart';
import 'package:keshoohin_flutter_app/src/common/utils/app_colors.dart';

class OwnThemeFields {
  final double defaultVerticalPaddingOfScreen = 10;
  final double defaultMarginBetween = 20;
  final double defaultProductCardMargin = 3;

  final Color defaultScaffoldColor = const Color.fromARGB(150, 230, 230, 243);
  final Color defaultContainerColor = Colors.white;
  final Color badgeNotiColor = const Color.fromRGBO(244, 163, 155, 1);

  final Color bottomNavigationColor = Colors.white;
  final Color bottomNavigationLabelColor = Colors.black;
  final Color bottomNavigationSelectedColor = Colors.blue;

  final Color retailPriceColor = const Color.fromARGB(255, 240, 15, 15);
  final double retailPriceSize = 20;
  final Color headingSearchBoxBorderColor =
      const Color.fromRGBO(244, 163, 155, 1);

  //search page
  final Color searchBoxBorderColor = const Color.fromRGBO(244, 163, 155, 1);

  //cart page
  final Color orderButtonColor = Colors.orange;

  OwnThemeFields();
}

extension ThemeDataExtensions on ThemeData {
  static final Map<InputDecorationTheme, OwnThemeFields> _own = {};

  void addOwn(OwnThemeFields own) {
    // can't use reference to ThemeData since Theme.of() can create a new localized instance from the original theme. Use internal fields, in this case InputDecoreationTheme reference which is not deep copied but simply a reference is copied
    _own[inputDecorationTheme] = own;
  }

  static OwnThemeFields? empty;

  OwnThemeFields own() {
    var o = _own[inputDecorationTheme];
    if (o == null) {
      empty ??= OwnThemeFields();
      o = empty;
    }
    return o!;
  }
}

OwnThemeFields ownTheme(BuildContext context) => Theme.of(context).own();

final ThemeData lightTheme = ThemeData().copyWith(
  // buttonTheme: const ButtonThemeData(
  //     buttonColor: Colors.transparent, splashColor: Colors.white),
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: AppColors.primaryBackground,
      iconTheme: IconThemeData(color: AppColors.primaryText)),
  scaffoldBackgroundColor: AppColors.primaryBackground,
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black))),
  inputDecorationTheme: const InputDecorationTheme(
    focusedBorder: InputBorder.none,
    border: InputBorder.none,
    labelStyle: TextStyle(
      color: AppColors.primaryText,
      fontFamily: 'OpenSans',
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
  ),
  colorScheme: const ColorScheme.light().copyWith(
      background: AppColors.primaryBackground,
      secondary: AppColors.primarySecondaryBackground),
  primaryColor: AppColors.primaryText,
)..addOwn(OwnThemeFields());

const primaryTextStyle = TextStyle(
    color: AppColors.primaryText,
    fontFamily: 'OpenSans',
    fontSize: 14,
    fontWeight: FontWeight.normal);

const primaryHintTextStyle = TextStyle(
    color: AppColors.primaryThirdElementText,
    fontFamily: 'OpenSans',
    fontSize: 12,
    fontWeight: FontWeight.normal);

const primaryBoldStyleText = TextStyle(
  color: AppColors.primaryText,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
  fontSize: 12,
);

// final ThemeData darkTheme = ThemeData.dark().copyWith(
//     cardColor: const Color.fromARGB(255, 32, 33, 36),
//     dialogBackgroundColor: const Color.fromARGB(255, 32, 33, 36),
//     canvasColor: const Color.fromARGB(255, 32, 33, 36),
//     scaffoldBackgroundColor: const Color.fromARGB(255, 16, 17, 18),
//     outlinedButtonTheme: OutlinedButtonThemeData(
//         style: ButtonStyle(
//             foregroundColor: MaterialStateProperty.all<Color>(Colors.white))),
//     //backgroundColor: const Color.fromARGB(255, 32, 35, 36),
//     colorScheme: const ColorScheme.dark().copyWith(
//         background: const Color.fromARGB(255, 32, 35, 36),
//         secondary: Colors.green),
//     buttonTheme: const ButtonThemeData(
//         buttonColor: Colors.white, splashColor: Colors.white),
//     //menuTheme: const MenuThemeData(style: MenuStyle(backgroundColor: Colors.blueGrey)),
//     textTheme: TextTheme(
//       labelLarge: const TextStyle(fontSize: 18, fontFamily: 'Montserrat'),
//       headlineSmall: const TextStyle(
//           fontSize: 20.0,
//           color: Color.fromARGB(255, 240, 240, 240),
//           fontFamily: 'Montserrat',
//           fontWeight: FontWeight.bold,
//           fontFamilyFallback: ['Roboto']),
//       titleMedium: const TextStyle(
//           fontSize: 20.0,
//           fontFamily: 'Montserrat',
//           color: Colors.white,
//           fontFamilyFallback: ['Roboto']),
//       titleSmall: TextStyle(
//           fontSize: 16.0,
//           fontFamily: 'Montserrat',
//           fontStyle: FontStyle.italic,
//           color: Colors.white.withAlpha(128),
//           fontFamilyFallback: const ['Roboto']),
//       // used for dictionary error text in Online dicts
//       labelSmall: const TextStyle(
//           fontSize: 14.0,
//           fontFamily: 'Montserrat',
//           fontStyle: FontStyle.italic,
//           color: Colors.white,
//           fontFamilyFallback: ['Roboto']),
//       bodyMedium: const TextStyle(
//           fontSize: 20.0,
//           fontFamily: 'Montserrat',
//           color: Colors.white,
//           fontFamilyFallback: ['Roboto']),
//       // Dictionary card, dictionary  name
//       bodySmall: const TextStyle(
//           fontSize: 17.0,
//           fontFamily: 'Montserrat',
//           color: Colors.white,
//           fontFamilyFallback: ['Roboto']),
//     ))
//   ..addOwn(OwnThemeFields(
//       spanColor: Colors.grey[400],
//       errorShade: const Color.fromARGB(240, 200, 0, 0),
//       textBaloon: const Color.fromARGB(255, 200, 80, 80),
//       textSelectionPopupColor: const Color.fromARGB(255, 200, 80, 80)));
