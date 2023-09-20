//import 'package:componentes_futter/src/pages/homeTemp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:componentes_futter/src/pages/alert_page.dart';
import 'package:componentes_futter/src/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales: const [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],

      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getAppRoutes(),

      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) => AlertPage());
      },

    );
  }
}
