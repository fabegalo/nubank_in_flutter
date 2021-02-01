import 'package:flutter/material.dart';
import 'package:nubank/Telas/TelaConfiguracao.dart';
import 'package:splashscreen/splashscreen.dart';
import 'Telas/TelaInicio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/TelaInicio": (context) => TelaInicio(),
        "/TelaConfiguracao": (context) => TelaConfiguracao()
      },
      title: 'Corona Tracker',
      theme:
          ThemeData(primarySwatch: Colors.purple, fontFamily: 'GothamMedium'),
      home: new TelaSplashScreen(),
    );
  }
}

class TelaSplashScreen extends StatefulWidget {
  @override
  _TelaSplashScreenState createState() => _TelaSplashScreenState();
}

class _TelaSplashScreenState extends State<TelaSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return _introScreen(context);
  }
}

Widget _introScreen(context) {
  var size = MediaQuery.of(context).size;

  return OrientationBuilder(
    builder: (context, orientation) {
      return Stack(
        children: <Widget>[
          SplashScreen(
            seconds: 2,
            gradientBackground: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xff8a05be), Color(0xff8a05be), Color(0xff8a05be)],
            ),
            navigateAfterSeconds: TelaInicio(),
            loaderColor: Colors.white,
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: size.height / 5.0,
                  child: Image.asset(
                    "assets/nuLogo.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
