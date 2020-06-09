import 'package:fit247/Chloe.dart';
import 'package:fit247/Jordan.dart';
import 'package:fit247/Mike.dart';
import 'package:fit247/Vicky.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  _launchURL() async {
    const url = 'https://www.youtube.com/watch?v=SMRBIGq9VDA';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Fit247"),
              new Image.asset('assets/logo.png',width: 60,),
            ],
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(child: Text("Male"),),
              Tab(child: Text("Female"),),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> Jordan()));
                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Card(
                        elevation: 4,
                        child: Column(
                          children: <Widget>[
                            Container(child: Image.asset("assets/jordan.jpg")),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(child: Container(child: Text("Jordan Yeoh",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),textAlign: TextAlign.center,)))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> Mike()));

                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Card(
                        elevation: 4,
                        child: Column(
                          children: <Widget>[
                            Container(child: Image.asset("assets/mike.jpg")),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(child: Container(child: Text("Mike Thurston",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),textAlign: TextAlign.center,)))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> Chloe()));
                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Card(
                        elevation: 4,
                        child: Column(
                          children: <Widget>[
                            Container(child: Image.asset("assets/chloe.jpg")),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(child: Container(child: Text("Chloe Ting",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),textAlign: TextAlign.center,)))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> Vicky()));
                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Card(
                        elevation: 4,
                        child: Column(
                          children: <Widget>[
                            Container(child: Image.asset("assets/vicky.jpg")),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(child: Container(child: Text("Vicky Justiz",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),textAlign: TextAlign.center,)))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            launch("tel://089508098089");
          },
          child: Icon(Icons.call,color: Colors.white, ),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
