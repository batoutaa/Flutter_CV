import 'package:flutter/material.dart';
import 'package:miniprojet/theme.dart';
import 'package:provider/provider.dart';
import 'LocaleString.dart';
import 'splash_screen.dart';
import 'package:get/get.dart';
import 'package:miniprojet/LocaleString.dart';
void main() => runApp(
  ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: MyApp(),
  ),
);

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List locale = [
    {'name': 'FRANCE', 'locale': Locale('en','FR')},
    {'name': 'ENGLISH', 'locale': Locale('en','US')},
    {'name': 'اللغة العربية', 'locale': Locale('en','AR')},
  ];
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: localSring(),
      locale: Locale('en', 'FR'),
      fallbackLocale: Locale('en', 'FR'),
      title: 'Nom Prénom',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.blue, // Couleur de l'appbar pour le thème clair
        ),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: Provider.of<ThemeProvider>(context).isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      home: SplashScreen(), // L'écran de démarrage
    );
  }
}
