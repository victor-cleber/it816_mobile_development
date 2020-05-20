import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'idea.dart';

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
      home: MyListScreen(),
    );
  }
}

class MyListScreen extends StatefulWidget {
  @override
  createState() => _MyListScreenState();
}

class _MyListScreenState extends State {
  final String uri = 'http://api.ideiasqueajudam.com/ideias/?format=json';

  Future<List<Idea>> _fetchIdeas() async {
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      final items = json.decode(response.body).cast<Map<String, dynamic>>();
      List<Idea> listOfIdeass = items.map<Idea>((json) {
        return Idea.fromJson(json);
      }).toList();

      return listOfIdeass;
    } else {
      throw Exception('Failed to load internet');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white54,
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
        body: FutureBuilder<List<Idea>>(
            future: _fetchIdeas(),
            builder: (context, snapshot) {
              if (!snapshot.hasData)
                return Center(child: CircularProgressIndicator());

              return ListView(
                children: snapshot.data
                    .map(
                      (idea) =>
                          /*ListTile(
                          title: Text(idea.descricao),
                          subtitle: ListTile(
                              title: Text(idea.descricao),
                              subtitle: Text('subtitle'),
                              leading: CircleAvatar(
                                backgroundColor: Colors.red,
                                child: Text(idea.descricao,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    )),
                              )),
                        )
                        */
                          Card(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: 300,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(idea.caminhoImagem),
                                  fit: BoxFit.contain,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                            ),
                            Container(
                              padding: new EdgeInsets.all(2.0),
                              child: Text(
                                idea.titulo,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 1),
                              child: Text(
                                idea.descricao,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              );
            }));
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
