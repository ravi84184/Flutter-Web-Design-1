import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigation_widget.dart';
import 'widgets/overlap_square_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0Xff4B3385),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        right: 500,
                        top: 100,
                        child: OverlapSquare(
                          50,
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                      Positioned(
                        left: 300,
                        top: 100,
                        child: OverlapSquare(
                          20,
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                      Positioned(
                        right: 300,
                        top: 50,
                        child: OverlapSquare(
                          20,
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                      Positioned(
                        right: 700,
                        top: 200,
                        child: OverlapSquare(
                          20,
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                      Positioned(
                        right: 700,
                        top: 200,
                        child: OverlapSquare(
                          20,
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                      Positioned(
                        right: -100,
                        top: 100,
                        child: OverlapSquare(
                          200,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width/2-100,
                        bottom: -100,
                        child: OverlapSquare(
                          200,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                      Positioned(
                        left: -100,
                        bottom: -100,
                        child: OverlapSquare(
                          200,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 50,
                        left: 300,
                        child: OverlapSquare(
                          50,
                          color: Colors.yellow.withOpacity(0.8),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width/2-100,
                        top: -100,
                        child: OverlapSquare(
                          200,
                          color: Colors.yellow.withOpacity(0.5),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 70,
                        child: OverlapSquare(
                          30,
                          color: Colors.yellow.withOpacity(0.5),
                        ),
                      ),
                      Positioned(
                        left: 200,
                        bottom: 10,
                        child: OverlapSquare(
                          30,
                          color: Colors.yellow.withOpacity(0.5),
                        ),
                      ),
                      Positioned(
                        top: -100,
                        left: -100,
                        child: OverlapSquare(
                          200,
                          color: Colors.yellow.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  NavigationWidget(),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: "LET'S CHANGE THE WAY \nYOU DESIGN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: ".",
                                  style: TextStyle(
                                      color: Colors.yellow[900],
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Design and prototype website and apps intuitively, in a new product reworked for the igital age.",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        MediaQuery.of(context).size.width >800?Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: list(context),
                        ):Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: list(context),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  List<Widget> list(context) {
    return [
      SizedBox(
          height: 30,
          width: 150,
          child: RaisedButton(
            onPressed: () {},
            child: Text(
              "READ MORE",
              style: TextStyle(fontSize: 13),
            ),
            color: Color(0xff3c227f),
            textColor: Colors.yellow[900],
          )),
      SizedBox(height: 20,),
      SizedBox(
        height: 300,
        width:500,
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(10))),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: <Widget>[
              Image.network(
                "https://www.going-pro.com/contentassets/05d3d30dd4e54f6f92543ffa666c2838/computer-user-specialist-1180x664.png",
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.white.withOpacity(0.4),
                child: Center(
                  child: Icon(
                    Icons.play_circle_filled,
                    color: Color(0xff3c227f),
                    size: 50,
                  ),
                ),
              ),

            ],
          ),
        ),
      )
    ];
  }
}
