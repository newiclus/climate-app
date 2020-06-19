import 'package:climate_app/config/route.dart';
import 'package:climate_app/screens/loading.dart';
import 'package:climate_app/theme/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ClimateApp());
}

class ClimateApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Lato',
        textTheme: TextTheme(
          bodyText2: TextStyle(color: kTextColor),
        ),
      ),
      initialRoute: Routes.welcome,
      routes: {
        Routes.welcome: (context) => LoadingScreen(),
        //  Routes.home: (context) => RegistrationScreen(),
        //  Routes.search: (context) => ChatScreen(),
      },
    );
  }
}

