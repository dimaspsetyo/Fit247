import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Mike extends StatefulWidget {
  @override
  _MikeState createState() => _MikeState();
}

class _MikeState extends State<Mike> {

  _launchURL() async {
    const url = 'https://www.youtube.com/watch?v=rt_6WnCfgEM&amp;list=PLKKpjoA1Byw2XkJyutI868qWReFd1DkDC';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  _launchURL2() async {
    const url = 'https://www.youtube.com/watch?v=Sqo29SsJqpA&amp;list=PLKKpjoA1Byw2XkJyutI868qWReFd1DkDC&amp;index=3';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  _launchURL3() async {
    const url = 'https://www.youtube.com/watch?v=hQziiD4cwDs&amp;list=PLKKpjoA1Byw2XkJyutI868qWReFd1DkDC&amp;index=7';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //throw 'Could not launch $url';
      print("Not Print");
    }
  }

  _launchURL4() async {
    const url = 'https://www.youtube.com/watch?v=uao01s8GtUw&amp;list=PLKKpjoA1Byw2XkJyutI868qWReFd1DkDC&amp;index=8';
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
              InkWell(
                onTap: (){
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/mike2.jpg")),

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
              InkWell(
                onTap: (){
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/mike3.jpg")),

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
              InkWell(
                onTap: (){
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Container(child: Image.asset("assets/mike4.jpg")),

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
