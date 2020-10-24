import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wallpaper_app/Widgets/widgets.dart';
import 'package:wallpaper_app/data/data.dart';
import 'package:wallpaper_app/data/model/model.dart';

class Category extends StatefulWidget {
  final String categorieName;
  Category({this.categorieName});

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold();
  // }

  List<Wallpaper_model> wallpapers = new List();

  getSearchWallpapers(String query) async {
    var response = await http.get(
        "https://api.pexels.com/v1/search?query=$query&per_page=26",
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
    getSearchWallpapers(widget.categorieName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: brandName(),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20, bottom: 20),
          child: Column(
            children: <Widget>[
              WallpapersList(wallpapers: wallpapers, context: context),
            ],
          ),
        ),
      ),
    );
  }
}
