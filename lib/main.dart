import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:bije_academy/app/app.bottomsheets.dart';
import 'package:bije_academy/app/app.dialogs.dart';
import 'package:bije_academy/app/app.locator.dart';
import 'package:bije_academy/app/app.router.dart';
import 'package:bije_academy/ui/common/app_colors.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  setPathUrlStrategy();
  setupLocator(
    stackedRouter: stackedRouter,
  );
  setupDialogUi();
  setupBottomSheetUi();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      preferDesktop: true,
      builder: (_) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Stacked Application',
        theme: Theme.of(context).copyWith(
          primaryColor: kcBackgroundColor,
          focusColor: kcPrimaryColor,
          textTheme: GoogleFonts.openSansTextTheme().apply(
            bodyColor: Colors.white,
          ),
        ),
        routerDelegate: stackedRouter.delegate(),
        routeInformationParser: stackedRouter.defaultRouteParser(),
      ).animate()
      .fadeIn(
        delay: const Duration(milliseconds: 50),
        duration: const Duration(milliseconds: 400),
      )
    );
  }
}

