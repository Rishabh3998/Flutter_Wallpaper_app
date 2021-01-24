import 'package:flutter/material.dart';
import 'package:wallpaper_app/Loginandsignup/login.dart';
import 'package:wallpaper_app/Widgets/widgets.dart';
import 'package:wallpaper_app/views/about.dart';
import 'package:wallpaper_app/views/home.dart';
import 'package:wallpaper_app/views/profile.dart';
import 'package:wallpaper_app/views/settings.dart';

class saved extends StatefulWidget {
  @override
  _savedState createState() => _savedState();
}

int _selectedItem = 0;

class _savedState extends State<saved> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                color: Theme.of(context).primaryColor,
                padding: EdgeInsets.only(top: 10.0, bottom: 30),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      padding:
                          EdgeInsets.only(left: 20.0, top: 30.0, bottom: 10),
                      child: Text(
                        'TeNeT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://insomniac.games/wp-content/uploads/2018/09/Spider-Man_PS4_Selfie_Photo_Mode_LEGAL.jpg")),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.home_filled),
                title: Text('Home'),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profile()));
                },
              ),
              ListTile(
                title: Text('LogIn'),
                leading: Icon(Icons.login),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => settings()));
                },
              ),
              ListTile(
                title: Text('About'),
                leading: Icon(Icons.info),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => about()));
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: brandName(),
          elevation: 7.0,
          shadowColor: Colors.grey,
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          iconSize: 24.0,
          // backgroundColor: Colors.blue,
          elevation: 50.0,
          showUnselectedLabels: true,
          selectedIconTheme: IconThemeData(
            size: 24,
            color: Colors.black,
          ),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: 'Login',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'About',
            ),
          ],
          currentIndex: _selectedItem,
          selectedItemColor: Colors.black,
          onTap: (int index) {
            setState(() {
              // int index;
              _selectedItem = index;
              // _pagesData[_selectedItem];
              // if () {
              //   Navigator.push(
              //       context, MaterialPageRoute(builder: (context) => ()));
              // }
            });
          },
        ),
      ),
    );
  }
}
