import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Row(children: [
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    print('education pressed');
                  },
                  child: ClipOval(
                    child: Material(
                      color: Colors.white70, // button color
                      child: SizedBox(
                        width: 56,
                        height: 56,
                        child: Image.asset('images/education.jpg'),
                      ),
                    ),
                  )),
            ),
            Expanded(
                child: FlatButton(
              onPressed: () {
                print('social pressed');
              },
              child: ClipOval(
                child: Material(
                  color: Colors.white70,
                  child: SizedBox(
                    width: 56,
                    height: 56,
                    child: Image.asset("images/social.jpg"),
                  ),
                ),
              ),
            )),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('health pressed');
                },
                child: ClipOval(
                  child: SizedBox(
                      width: 56,
                      height: 56,
                      child: Image.asset("images/health.jpg")),
                ),
              ),
            ),
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      print('money pressed');
                    },
                    child: ClipOval(
                      child: SizedBox(
                        width: 56,
                        height: 56,
                        child: Image.asset("images/money.jpg"),
                      ),
                    ))),
          ]),
        ),
        body: IdeasPage(),
      ),
    );
  }
}

//TODO
//create the app bar with login
//http://www.macoratti.net/19/07/flut_layout2.htm
//
//
//create an idea visualization with imaage, date, name and text
//remover logo de debug
//colocar splash screen
//consumir api django

class IdeasPage extends StatefulWidget {
  @override
  _IdeasPageState createState() => _IdeasPageState();
}

class _IdeasPageState extends State<IdeasPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
