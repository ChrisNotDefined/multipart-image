import 'package:blocpattern/src/bloc/provider.dart';
import 'package:blocpattern/src/pages/home_page.dart';
import 'package:blocpattern/src/pages/login_page.dart';
import 'package:blocpattern/src/pages/producto_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        theme: new ThemeData.light().copyWith(
          scaffoldBackgroundColor: const Color(0xFFF1F8E3),
          primaryColor: const Color(0xFF76FF03),
          accentColor:  const Color(0xFF45FF03),
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: const Color(0xFF76FF03),
            selectionColor: const Color(0xFFAAF8AA),
            selectionHandleColor:  const Color(0xFF76FF03),
          ),
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red)
            )
          )
        ),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'Home',
        routes: {
          'Login': (BuildContext context) => LoginPage(),
          'Home': (BuildContext context) => HomePage(),
          'Productos': (BuildContext context) => ProductPage(),
        },
      ),
    );
  }
}
