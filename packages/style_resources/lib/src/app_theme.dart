import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style_resources.dart';

class AppTheme {
  AppTheme._();

  static TextTheme lighTextTheme = TextTheme(
    displayLarge: GoogleFonts.nunitoSans(
      fontSize: AppSize.displayLarge,
      fontWeight: FontWeight.w500,
    ),
    displayMedium: GoogleFonts.nunitoSans(
      fontSize: AppSize.displayMedium,
      fontWeight: FontWeight.w500,
    ),
    displaySmall: GoogleFonts.nunitoSans(
      fontSize: AppSize.displaySmall,
      fontWeight: FontWeight.w500,
    ),
    headlineLarge: GoogleFonts.nunitoSans(
      fontSize: AppSize.headlineLarge,
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: GoogleFonts.nunitoSans(
      fontSize: AppSize.headlineMedium,
      fontWeight: FontWeight.w500,
    ),
    // OB,
    headlineSmall: GoogleFonts.nunitoSans(
      fontSize: AppSize.headlineSmall,
      fontWeight: FontWeight.w700,
    ),
    titleLarge: GoogleFonts.nunitoSans(
      fontSize: AppSize.titleLarge,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: GoogleFonts.nunitoSans(
      fontSize: AppSize.titleMedium,
      fontWeight: FontWeight.w500,
    ),
    // OB(Appbar)
    titleSmall: GoogleFonts.nunitoSans(
      fontSize: AppSize.titleSmall,
      fontWeight: FontWeight.w500,
      color: AppPalette.black,
    ),
    labelLarge: GoogleFonts.nunitoSans(
      fontSize: AppSize.labelLarge,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: GoogleFonts.nunitoSans(
      fontSize: AppSize.labelMedium,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: GoogleFonts.nunitoSans(
      fontSize: AppSize.labelSmall,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: GoogleFonts.nunitoSans(
      fontSize: AppSize.bodyLarge,
      fontWeight: FontWeight.w500,
    ),
    // OB(button)
    bodyMedium: GoogleFonts.nunitoSans(
      fontSize: AppSize.bodyMedium,
      fontWeight: FontWeight.w500,
      color: AppPalette.white,
      letterSpacing: 0.25,
    ),
    // OB,
    bodySmall: GoogleFonts.nunitoSans(
      fontSize: AppSize.bodySmall,
      fontWeight: FontWeight.w400,
      color: AppPalette.black,
    ),
  );

  static ThemeData light() {
    return ThemeData(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          titleSpacing: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          color: AppPalette.white,
          elevation: 0,
        ),
        textTheme: lighTextTheme,
        inputDecorationTheme: InputDecorationTheme(
          // prefixIconColor: AppPalette.darkBlue,
          isDense: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          // fillColor: AppPalette.greyColor2,
          filled: true,
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          // backgroundColor: AppPalette.whiteColor,
          elevation: 0,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(10),
            elevation: 4,
            // backgroundColor: AppPalette.darkBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppPalette.primaryBlue,
            padding: EdgeInsets.symmetric(vertical: AppSize.size10),
            minimumSize: Size(0, AppSize.size45),
            elevation: 0,
          ),
        ));
  }
}
