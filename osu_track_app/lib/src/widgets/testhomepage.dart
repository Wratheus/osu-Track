import 'package:flutter/material.dart';

import 'authorization.dart' as authorizationPage;
import '../requests/requests.dart';
import '../objects/user.dart' as user;
import '../objects/scores.dart' as scores;
import '../objects/news.dart' as news;
import '../objects/beatmap.dart' as beatmap;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: authorizationPage.LoginScreen());

  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() async{

    //final token = await getToken();
    //print(token['access_token']);
    //final player = await getUser(token['access_token'], 'Repentance');
    //print(player.id);
    //List<dynamic> userScore = await getUserScore(token['access_token'], 'Sgooll', '100');
    //print(userScore);
    //news.News firstNew = await getNews(token['access_token']);
    //print(firstNew.id);
    //beatmap.Beatmap beatmapReq = await getBeatmap(token['access_token'], '2530810');
    //print(beatmapReq);
    //List<dynamic> beatmapScores = await getBeatmapScores(token['access_token'], '2530810');
    //print(beatmapScores);
    //int count = 0;
    //List<String> mods = ['HD', 'DT'];
    //List<dynamic> beatmapScoresWithMods = await getBeatmapScores(token['access_token'], '738063');
    //print(beatmapScoresWithMods);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '1',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add)
        )
    );
  }
}