import 'package:flutter/material.dart';

class Signing extends StatefulWidget {
  @override
  _SigningState createState() => _SigningState();
}

bool pressed = false;
bool k=true;


class _SigningState extends State<Signing> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Expanded(
              child: Container(
               child: Image(
                 image: AssetImage('images/wallpaper.jpg'),
                 ),
                )
               ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 200.0, 0, 0),
                child: Text(
                  "WELCOME",
                  style: TextStyle(
                    fontSize: 48.0,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(22, 270.0, 0, 0),
                child: Text(
                  "Let's get started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans'
                    ),
                  ),
                ),
              Expanded(
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 350, 0, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(65.0),
                          topRight:Radius.circular(65.0),
                        )
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
                      child: Center(
                        child: Text(
                          "Select the language",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    Stack(
                      children: <Widget>[
                        Padding(
                         padding: EdgeInsets.fromLTRB(23.0, 470.0, 31.0, 0),
                          child: Container(
                            height: 40.0,
                            color: Colors.transparent,
                             child:RaisedButton(
                                onPressed: (){
                                    //setState(() {
                                      //pressed=!pressed;
                                    //});
                                },
                                onHighlightChanged: (k) {
                                  setState(() {
                                    pressed=!pressed;

                                  });
                                },
                                 color: Colors.redAccent,
                                 shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0)
                                ),
                                splashColor: Colors.black,
                                elevation: 14.0,
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Center(child: Text(
                                        "English",
                                        style: TextStyle(
                                        fontFamily: 'SourceSerifPro',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24.0,
                                      ),
                                    ),
                                  ),
                                    SizedBox(
                                      width:70.0,
                                    ),
                                    CircleAvatar(
                                      backgroundImage: AssetImage('images/United_States_of_America.png'),
                                      radius: 13.0,
                                    )
                                  ]
                                ),
                              ),
                            )
                          )
                        ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(23.0, 530.0, 31, 0),
                            child: Container(
                              height: 40.0,
                              color: Colors.transparent,
                               child: RaisedButton(
                                onPressed: (){
                                //setState(() {
                                  //pressed=!pressed;
                                //}); 
                                },
                                onHighlightChanged: (k){
                                  setState(() {
                                    pressed=!pressed;
                                  });
                                },
                                color: Colors.redAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0)
                                ),
                                splashColor: Colors.black,
                                elevation: 14.0,
                                child: Container(
                                 child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Center(child: Text(
                                      "Hindi",
                                       style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                      color: Colors.white,
                                      fontFamily: 'SourceSerifPro'
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:90.0,
                                  ),
                                    CircleAvatar(
                                      backgroundImage: AssetImage('images/India.png'),
                                      radius: 13.0,
                                    )
                                  ]
                                ),
                              ),
                            )
                          ),
                        ),
                      ]
                    )
                  ],
                ) 
              )
            ],
          ),
        )
      );
    }
  }