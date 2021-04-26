import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cartão de visitas - Artur',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: Scaffold(
          backgroundColor: Colors.yellowAccent,
          body: SafeArea(
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/artur.jpg'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                buildText('ARTUR OLIVEIRA', Colors.black87, 30, 'Antonio', FontWeight.bold),
                buildText('Desenvolvedor FullStack', Colors.black87, 20, 'Arial', FontWeight.bold, 2.5),
                SizedBox(
                  height: 20.0,
                  width: 300.0,
                  child: Divider(
                    color: Colors.black87,
                  ),
                ),
                buildCard(Icons.message, '+55 86 98803-3430'),
                buildCard(Icons.email, 'artur.oliveira9876@gmail.com'),
                buildCard(Icons.people, '@__.a.r.t.u.r_')

              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ));
  }
}

Widget buildText(textParam, colorParam, double fontSizeParam, fontFamilyParam, [fontWeightParam, letterSpacingParam]) {
  return Text(
    textParam,
    style: TextStyle(
        color: colorParam,
        fontSize: fontSizeParam,
        fontFamily: fontFamilyParam,
        letterSpacing: letterSpacingParam != null ? letterSpacingParam : 1.0,
        fontWeight: fontWeightParam != null ? fontWeightParam : FontWeight.normal),
  );
}

Widget buildCard(icon, text) {
  return Card(
    child: ListTile(
        leading: Icon(
          icon,
        ),
        title: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w700
          ),
        )
    ),
    margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
  );
}