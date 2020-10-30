import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:wallpaper_app/Loginandsignup/login.dart';
import 'package:wallpaper_app/Widgets/widgets.dart';
import 'package:wallpaper_app/data/data.dart';
import 'package:wallpaper_app/data/model/categoriesmodel.dart';
import 'package:http/http.dart' as http;
import 'package:wallpaper_app/data/model/model.dart';
import 'package:wallpaper_app/views/category.dart';
import 'package:wallpaper_app/views/search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoriesModel> categories = new List();
  List<Wallpaper_model> wallpapers = new List();
  TextEditingController searchController = new TextEditingController();

  getTrendingWallpapers() async {
    var response = await http.get(
        "https://api.pexels.com/v1/curated?per_page=26",
        headers: {"Authorization": apiKey});

    // print(response.body.toString());

    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["photos"].forEach((element) {
      // print(element);
      Wallpaper_model wallpaper_model = new Wallpaper_model();
      wallpaper_model = Wallpaper_model.fromMap(element);
      wallpapers.add(wallpaper_model);
    });

    setState(() {});
  }

  @override
  void initState() {
    getTrendingWallpapers();
    categories = getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: new LinearGradient(
            colors: [Colors.red[600], Colors.purple[900]],
            begin: const FractionalOffset(0.5, 0.0),
            end: const FractionalOffset(0.0, 0.5),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Text(
                  'TeNeT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                title: Text('LOGIN'),
                leading: Icon(Icons.login),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: brandName(),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          // bottomNavigationBar: BottomNavigationBar(
          //   items: const <BottomNavigationBarItem>[
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.home),
          //       label: 'Home',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.business),
          //       label: 'Business',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.school),
          //       label: 'School',
          //     ),
          //   ],
          // ),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff5f8fd),
                      borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          controller: searchController,
                          decoration: InputDecoration(
                              hintText: "Search Wallpaper",
                              border: InputBorder.none),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Search(
                                          searchQuery: searchController.text,
                                        )));
                          },
                          child: Container(child: Icon(Icons.search)))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      //wallpapers[index].src.portrait;
                      return CategoriesTile(
                        title: categories[index].categoriesName,
                        imgUrl: categories[index].imgUrl,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                WallpapersList(wallpapers: wallpapers, context: context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoriesTile extends StatelessWidget {
  final String imgUrl, title;
  CategoriesTile({@required this.title, @required this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Category(
                      categorieName: title.toLowerCase(),
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(right: 4),
        child: Stack(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  imgUrl,
                  height: 50,
                  width: 100,
                  fit: BoxFit.cover,
                )),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(8)),
              height: 50,
              width: 100,
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
