import '../router/router.gr.dart';

import '../design/coolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      title: 'Dokan Demo',
      theme: ThemeData(
        backgroundColor: Coolors.kBgColor,
        primaryColor: Coolors.kOrangeColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
            primary: Coolors.kOrangeColor,
            textStyle: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Coolors.kBgColor,
          iconTheme: const IconThemeData(
            color: Coolors.kAppBarTitleTextColor,
          ),
          titleTextStyle: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
              color: Coolors.kAppBarTitleTextColor,
            ),
          ),
        ),
        textTheme: TextTheme(
          headline1: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          headline2: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Coolors.kGreyTextColor,
            ),
          ),
          headline3: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 17.36,
              color: Colors.black,
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 17.5,
              color: Coolors.kGreyTextColor,
            ),
          ),
          suffixIconColor: Coolors.kGreyTextColor,
        ),
      ),
    );
  }
}
