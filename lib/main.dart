import 'package:ToDoApp/models/global.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Todo App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return TestApp();
  }
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: Stack(
              children: <Widget>[
                TabBarView(
                  children: <Widget>[
                    Container(
                      color: darkGreyColor,
                    ),
                    Container(
                      color: Colors.orange,
                    ),
                    Container(
                      color: Colors.lightGreen,
                    ),
                  ],
                ),
                Container(
                  height: 150,
                  padding: EdgeInsets.only(left: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Intray",
                        style: intrayTitleStyle,
                      ),
                      Container()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 120,
                    left: MediaQuery.of(context).size.width * 0.5 - 28,
                  ),
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add, size: 56,),
                    backgroundColor: redColor,
                  ),
                ),
              ],
            ),
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              title: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.rss_feed),
                  ),
                  Tab(
                    icon: Icon(Icons.perm_identity),
                  ),
                ],
                labelColor: darkGreyColor,
                unselectedLabelColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Colors.transparent,
                onTap: (index) {},
              ),
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
