import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Chloe extends StatefulWidget {
  @override
  _ChloeState createState() => _ChloeState();
}

class _ChloeState extends State<Chloe> {

  _launchURL() async {
    const url = 'https://www.youtube.com/watch?v=2MoGxae-zyo&amp;list=PLAFs3kxY4h18ubPUONHriXCgo0YD4rmSW';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  _launchURL2() async {
    const url = 'https://www.youtube.com/watch?v=3Pr6nnKfMA&amp;list=PLAFs3kxY4h18ubPUONHriXCgo0YD4rmSW&amp;index=4';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  _launchURL3() async {
    const url = 'https://www.youtube.com/watch?v=2pLTolgUJs&amp;list=PLAFs3kxY4h18ubPUONHriXCgo0YD4rmSW&amp;index=2';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  _launchURL4() async {
    const url = 'https://www.youtube.com/watch?v=I9nGG4B5Bs&amp;list=PLAFs3kxY4h18ubPUONHriXCgo0YD4rmSW&amp;index=3';
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/chloe.jpg")),
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/chloe2.jpg")),

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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/chloe3.jpg")),

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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/chloe4.jpg")),
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
