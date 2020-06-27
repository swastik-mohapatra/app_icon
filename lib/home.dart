import 'package:flutter/material.dart';
import 'language.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:<Widget>[
              Container(
                margin: EdgeInsets.all(11.0),
                padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
                child: Text(
                  'Login Page',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    color: Colors.black,
                    fontSize: 43.0)
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                padding: EdgeInsets.all(0),
                width: 180.0,
                child: Divider(
                  height: 10.0,
                  thickness:2.0,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top:20.0, left:25.0, right:25.0),
               child: Column(
                 children: <Widget>[
                   TextField(
                     decoration:InputDecoration(
                       labelText:"Email",
                       labelStyle: TextStyle(
                           fontWeight: FontWeight.bold,
                           color: Colors.blueAccent.shade400 ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)
                        )  
                      ) ,
                     ),
               
                     SizedBox(
                       height:21.0,
                     ),
                     TextField(
                       decoration: InputDecoration(
                         labelText: "Password",
                         labelStyle: TextStyle(
                           fontWeight: FontWeight.bold,
                           color: Colors.blueAccent.shade400
                         ),
                         focusedBorder: UnderlineInputBorder(
                           borderSide: BorderSide(
                             color: Colors.blue
                             ),
                          ),
                        ),
                         obscureText: true,
                       ),
                     SizedBox(height:6.0),
                     Container(
                       alignment: Alignment(1, 0),
                       padding: EdgeInsets.only(top: 15.0, left:15.0),
                       child: InkWell(
                         child: Text(
                           "Forgot Password",
                           style: TextStyle(
                             color: Colors.teal,
                             fontWeight: FontWeight.bold,
                             //decoration: TxetDecoration.underline
                           ),
                         ),
                       ),
                     ),
                     SizedBox(height:32),
                     Container(
                       height: 37.0,
                       child: Material(
                         
                         borderRadius: BorderRadius.circular(10.0),
                         shadowColor: Colors.black,
                         color: Colors.blue,
                         elevation: 15.0,
                         child: GestureDetector(
                           onTap: (){},
                           child: Center(
                             child: Text("LOGIN",
                             style: TextStyle(
                               fontFamily: 'OpenSans',
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                               fontSize: 20.0,
                               ),
                              ),
                             ),
                            ),
                           )
                          ),
                     SizedBox(height:19.0),
                     Container(
                       padding: EdgeInsets.all(5.0),
                       child: Text(
                         
                         "or login with",
                         style: TextStyle(
                           fontSize: 17.0
                           )
                          )
                         )
                        ]
                       ),
                      ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                     padding: EdgeInsets.all(10.0),
                     child: CircleAvatar(
                       radius: 13.0,
                       backgroundImage: AssetImage('images/google.png'),
                       backgroundColor: Colors.transparent,
                       ),
                      ),
                     Padding(
                       padding: EdgeInsets.all(10.0),
                       child: CircleAvatar(
                         radius: 13.0,
                         backgroundImage: AssetImage('images/facebook.png'),
                         backgroundColor: Colors.transparent,
                         ),
                        ),
                       Padding(
                         padding: EdgeInsets.all(10.0),
                         child: CircleAvatar(
                           radius: 13.0,
                           backgroundImage: AssetImage('images/twitter.png'),
                           backgroundColor: Colors.transparent,
                           ),
                          )
                         ],
                        ),
                       ),
              SizedBox(
                height: 100.0,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 12.0),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      
                      Text(
                        "Don't have an account?",
                        
                        style: TextStyle(
                          fontSize: 17.0, ),
                        ),
                      SizedBox(
                        width: 6.0
                      ),
                      InkWell(
                        child: Text(
                          "SignUp",
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                            fontSize: 17.0
                            )
                           ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signing()),
                          );
                        },
                      ),
                    ]
                  ),
                )
              ]
            ),
          ),
        ),
      );
    }
  }