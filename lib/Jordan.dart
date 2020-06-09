import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Jordan extends StatefulWidget {
  @override
  _JordanState createState() => _JordanState();
}

class _JordanState extends State<Jordan> {
  @override
  Widget build(BuildContext context) {

    _launchURL() async {
      const url = 'https://www.youtube.com/watch?v=rYrM6D8ChM4&amp;list=PLlDgqw9V272l9Ro4fhn6ioxop29Fnh0u9&amp;index=1';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        //throw 'Could not launch $url';
        print("Not Print");
      }
    }

    _launchURL2() async {
      const url = 'https://www.youtube.com/watch?v=kJAFNN8t2Y&amp;list=PLlDgqw9V272l9Ro4fhn6ioxop29Fnh0u9&amp;index=4';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        //throw 'Could not launch $url';
        print("Not Print");
      }
    }

    _launchURL3() async {
      const url = 'https://www.youtube.com/watch?v=whLJx6jlbkk&amp;list=PLlDgqw9V272l9Ro4fhn6ioxop29Fnh0u9&amp;index=2';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        //throw 'Could not launch $url';
        print("Not Print");
      }
    }

    _launchURL4() async {
      const url = 'https://www.youtube.com/watch?v=pRJX9WTb4Y&amp;list=PLlDgqw9V272l9Ro4fhn6ioxop29Fnh0u9&amp;index=3';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        //throw 'Could not launch $url';
        print("Not Print");
      }
    }

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
                        Container(child: Image.asset("assets/jordan.jpg")),

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
                        Container(child: Image.asset("assets/jordan2.jpg")),

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
                        Container(child: Image.asset("assets/jordan3.jpg")),

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
                        Container(child: Image.asset("assets/jordan4.jpg")),

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
