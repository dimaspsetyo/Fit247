import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Vicky extends StatefulWidget {
  @override
  _VickyState createState() => _VickyState();
}

class _VickyState extends State<Vicky> {


  _launchURL() async {
    const url = 'https://www.youtube.com/watch?v=foRZQCdzJhY&amp;list=PLGJXy8jvV3rhgWQciKsOmTJHGXpAJMuQy&amp;index=4';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  _launchURL2() async {
    const url = 'https://www.youtube.com/watch?v=SOS2XXQz9nE&amp;list=PLGJXy8jvV3rhUvOWXNNGb2h8TXxJ5canx&amp;index=5';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  _launchURL3() async {
    const url = 'https://www.youtube.com/watch?v=-d162GJi2K8&amp;list=PLGJXy8jvV3rh5hyc3QJBA_i1xO6VqXmT5';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  _launchURL4() async {
    const url = 'https://www.youtube.com/watch?v=-d162GJi2K8&amp;list=PLGJXy8jvV3rh5hyc3QJBA_i1xO6VqXmT5';
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
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              InkWell(
                onTap: (){
                  _launchURL();
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/vicky.jpg")),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  _launchURL2();
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/vicky2.jpg")),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  _launchURL3();
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/vicky3.jpg")),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  _launchURL4();
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/vicky4.jpg")),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
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
