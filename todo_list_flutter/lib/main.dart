import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:todo_list_client/todo_list_client.dart';

var client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

List<Article> articles = [];

class _MyAppState extends State<MyApp> {
  void getArticles() async {
    final theArticles = await client.article.getArticle();
    setState(() {
      articles = theArticles;
    });
    print(articles);
  }

  @override
  void initState() {
    getArticles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Serverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(articles[index].title),
                    subtitle: Text(articles[index].content),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
