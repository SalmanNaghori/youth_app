import 'package:flutter/material.dart';
import 'package:youth_app/screens/contact_us_screen.dart';
import 'package:youth_app/screens/drawers_screen.dart';
import './screens/overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const int _bluePrimaryValue = 0xFF3F7ccd;
    const MaterialColor ourblue = MaterialColor(
      _bluePrimaryValue,
      <int, Color>{
        50: Color(0xFFE3F2FD),
        100: Color(0xFFBBDEFB),
        200: Color(0xFF90CAF9),
        300: Color(0xFF64B5F6),
        400: Color(0xFF42A5F5),
        500: Color(_bluePrimaryValue),
        600: Color(0xFF1E88E5),
        700: Color(0xFF1976D2),
        800: Color(0xFF1565C0),
        900: Color(0xFF0D47A1),
      },
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: ourblue,
        fontFamily: 'OpenSans',
      ),
      home: OverviewScreen(),
      routes: {
        OverviewScreen.routeName: (context) => OverviewScreen(),
        AboutYWIScreen.routeName: (context) => AboutYWIScreen(),
        FAQsScreen.routeName: (context) => FAQsScreen(),
        TermOfUseScreen.routeName: (context) => TermOfUseScreen(),
        ContactUsScreen.routename: (context) => ContactUsScreen(),
        // '/page2': (context) => Page2(),
        // '/page3': (context) => Page3(),
      },
    );
  }
}
