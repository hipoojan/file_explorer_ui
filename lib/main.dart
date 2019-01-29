import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'overlay.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color(0xfffdd329),
      accentColor: Color(0xfffcb127),
      canvasColor: Colors.transparent,
    ),
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  OverlaySheet overlaySheet = new OverlaySheet();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdd329),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              height: double.minPositive,
              alignment: Alignment.topRight,
              margin: EdgeInsets.fromLTRB(100, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search),
                    iconSize: 35,
                    onPressed: () {
                      onSearch();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.subject),
                    iconSize: 35,
                    onPressed: () {
                      onOptions();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.settings),
                    iconSize: 35,
                    onPressed: () {
                      onSettings();
                    },
                  ),
                ],
              )),
          Container(
            color: Color(0xfffdd329),
            margin: EdgeInsets.only(top: 50),
            height: 520,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 220,
                      height: 120,
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.yellow, offset: Offset(-7, 7))
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircularPercentIndicator(
                              radius: 75,
                              lineWidth: 3,
                              percent: 0.69,
                              progressColor: Color(0xfffdd329),
                              backgroundColor: Color(0xffe5e5e5),
                              center: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '69',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '%',
                                    textAlign: TextAlign.end,
                                  )
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Internal\nStorage',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '24.2 Gb / 28.0 Gb',
                                  style: TextStyle(fontSize: 11),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    RotatedBox(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        margin: EdgeInsets.only(left: 40),
                        alignment: Alignment.center,
                        width: 80,
                        height: 40,
                        child: Text(
                          'Analyze',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      quarterTurns: 1,
                    )
                  ],
                ),
                Expanded(
                    child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(9, (index) {
                    switch (index) {
                      case 0:
                        return Container(
                          margin: EdgeInsets.only(top: 30, left: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xfffcb127),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Text('Downloads')
                            ],
                          ),
                        );
                        break;
                      case 1:
                        return Container(
                          margin: EdgeInsets.only(top: 30, left: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                child: Icon(
                                  Icons.image,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Text('Images')
                            ],
                          ),
                        );
                        break;
                      case 2:
                        return Container(
                          margin: EdgeInsets.only(top: 30, left: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                child: Icon(
                                  Icons.music_note,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Text('Music')
                            ],
                          ),
                        );
                        break;
                      case 3:
                        return Container(
                          margin: EdgeInsets.only(top: 30, left: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                child: Icon(
                                  Icons.cloud,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Text('Cloud')
                            ],
                          ),
                        );
                        break;
                      case 4:
                        return Container(
                          margin: EdgeInsets.only(top: 30, left: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                child: Icon(Icons.description,
                                    color: Colors.white),
                                decoration: BoxDecoration(
                                    color: Color(0xfffcb127),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Text('Documents')
                            ],
                          ),
                        );
                        break;
                      case 5:
                        return Container(
                          margin: EdgeInsets.only(top: 30, left: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Text('Movies')
                            ],
                          ),
                        );
                        break;
                      case 6:
                        return Container(
                          margin: EdgeInsets.only(top: 30, left: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                child: Icon(
                                  Icons.games,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Text('Games')
                            ],
                          ),
                        );
                        break;
                      case 7:
                        return Container(
                          margin: EdgeInsets.only(top: 30, left: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                child: Icon(
                                  Icons.cached,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Text('Cache')
                            ],
                          ),
                        );
                        break;
                      case 8:
                        return Container(
                          margin: EdgeInsets.only(top: 30, left: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xfffcb127),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Text('Bin')
                            ],
                          ),
                        );
                        break;
                    }
                  }),
                ))
              ],
            ),
          ),
          GestureDetector(
            onTap: ()=> overlaySheet.showOverlaySheet(context),
            child: BottomAppBar(
              child: Container(
                height: 100,
                padding: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 0,
                      child: RaisedButton(
                        child: Text(
                          'Home',
                          style:
                              TextStyle(fontSize: 15, color: Color(0xfffcb127)),
                        ),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        onPressed: () {},
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.timer),
                      color: Colors.black,
                      iconSize: 30,
                      onPressed: () {
                        onTimer();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.folder),
                      color: Colors.black,
                      iconSize: 30,
                      onPressed: () {
                        onTimer();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.short_text),
                      color: Colors.black,
                      iconSize: 30,
                      onPressed: () {
                        onTimer();
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void onSearch() {
    Fluttertoast.showToast(
        msg: "Search Button !",
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.white,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 3,
        textColor: Color(0xfffdd329));
  }

  void onOptions() {
    Fluttertoast.showToast(
        msg: "Option Button !",
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.white,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 3,
        textColor: Color(0xfffdd329));
  }

  void onSettings() {
    Fluttertoast.showToast(
        msg: "Settings Button !",
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.white,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 3,
        textColor: Color(0xfffdd329));
  }

  void onTimer() {}
}
