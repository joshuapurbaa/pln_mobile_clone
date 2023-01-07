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
    // SignInWithOtherMethod (bottomSheet)
    headlineMedium: GoogleFonts.nunitoSans(
      fontSize: AppSize.headlineMedium,
      fontWeight: FontWeight.w500,
      color: AppPalette.black,
    ),
    // OB,SignIn, SignUp
    headlineSmall: GoogleFonts.nunitoSans(
      fontSize: AppSize.headlineSmall,
      fontWeight: FontWeight.w700,
    ),
    titleLarge: GoogleFonts.nunitoSans(
      fontSize: AppSize.titleLarge,
      fontWeight: FontWeight.w500,
    ),
    // SigninWithEmail (AppBar)
    titleMedium: GoogleFonts.nunitoSans(
      fontSize: AppSize.titleMedium,
      fontWeight: FontWeight.w600,
      color: AppPalette.black,
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
    // Ob(Button)
    labelMedium: GoogleFonts.nunitoSans(
      fontSize: AppSize.labelMedium,
      fontWeight: FontWeight.w500,
      color: AppPalette.white,
      letterSpacing: 0.25,
    ),
    // SignIn (hintText)
    labelSmall: GoogleFonts.nunitoSans(
      fontSize: AppSize.labelSmall,
      fontWeight: FontWeight.w600,
      color: AppPalette.tFieldHintText,
      letterSpacing: 0.10,
    ),
    //SignUp
    bodyLarge: GoogleFonts.nunitoSans(
      fontSize: AppSize.bodyLarge,
      fontWeight: FontWeight.w500,
      color: AppPalette.textGrey,
    ),
    // SignIn,
    bodyMedium: GoogleFonts.nunitoSans(
      fontSize: AppSize.bodyMedium,
      fontWeight: FontWeight.w600,
      color: AppPalette.black,
    ),
    // OB,SignIn(bottomSheet)
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
          foregroundColor: AppPalette.black,
          titleSpacing: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          backgroundColor: AppPalette.white,
          elevation: 0,
        ),
        textTheme: lighTextTheme,
        inputDecorationTheme: InputDecorationTheme(
          // prefixIconColor: AppPalette.darkBlue,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
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
