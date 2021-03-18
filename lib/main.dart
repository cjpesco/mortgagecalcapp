import 'package:flutter/material.dart';
import 'package:mortgagecalcapp/util/colors.dart';

import 'ui/mortgage_app.dart';

final ThemeData _mortgageTheme = _buildMortgageTheme();

ThemeData _buildMortgageTheme() {
  final ThemeData base = ThemeData.dark();

  return base.copyWith(
    accentColor: primaryIndigoDark,
    primaryColor: primaryIndigo200,
    scaffoldBackgroundColor: secondaryBackgroundWhite,
    hintColor: textOnSecondaryColor,
    cardColor: secondaryDeepPurple,
    textTheme: _buildMortgageTextTheme(base.textTheme),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.purple.shade400,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      elevation: 7,
      splashColor: primaryIndigoLight,
      backgroundColor: secondaryDeepPurple,
    ),
  );
}

TextTheme _buildMortgageTextTheme(TextTheme base) {
  return base
      .copyWith(
        bodyText2: TextStyle(
          color: textOnSecondaryColor,
          fontSize: 16,
        ),
      )
      .apply(
        fontFamily: 'Quicksand',
      );
}

void main() => runApp(
      MaterialApp(
        theme: _mortgageTheme,
        home: MortgageApp(),
      ),
    );
