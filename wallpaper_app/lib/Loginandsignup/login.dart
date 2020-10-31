import 'package:flutter/material.dart';
import 'package:wallpaper_app/Loginandsignup/signup.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(15),
      // decoration: BoxDecoration(
      //   gradient: new LinearGradient(
      //       colors: [Colors.red[400], Colors.blue[200]],
      //       begin: const FractionalOffset(0.5, 0.0),
      //       end: const FractionalOffset(0.0, 0.5),
      //       stops: [0.0, 1.0],
      //       tileMode: TileMode.clamp),
      // ),
      child: new Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 120.0, 0.0, 0.0),
                    child: Text(
                      ' TeNeT',
                      style: TextStyle(
                          fontSize: 70.0, fontWeight: FontWeight.w900),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(25.0, 200.0, 0.0, 0.0),
                    child: Text(
                      'Wallpapers',
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(240.0, 175.0, 0.0, 0.0),
                    child: Text(
                      '...',
                      style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 35, left: 20, right: 20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'abc@example.com',
                        labelStyle: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(top: 35, left: 20, right: 20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: '**********',
                        labelStyle: TextStyle(
                            fontSize: 23,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    padding: EdgeInsets.only(top: 15, left: 20),
                    child: InkWell(
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(30),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.5),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: ImageIcon(AssetImage('asset/facebook.png')),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                            child: Text(
                              'LogIn With Facebook',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Montserrat'),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 65,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New to TeNeT ?',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
                SizedBox(
                  width: 5.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.green,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
