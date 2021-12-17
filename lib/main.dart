import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/routes.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),//Specifies the style to use for the system overlays that are visible (if any).
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SuperHero',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[50],
        backgroundColor: Colors.grey[50],
        textTheme: GoogleFonts.poppinsTextTheme(),
        primaryColorBrightness: Brightness.light,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: ProjectRoutes.routes,
    );
  }
}