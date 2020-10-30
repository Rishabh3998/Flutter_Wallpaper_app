import 'package:flutter/material.dart';
import 'package:wallpaper_app/data/model/model.dart';
import 'package:wallpaper_app/views/imageview.dart';

Widget brandName() {
  return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
          children: <TextSpan>[
            TextSpan(
                text: "TeN",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w900)),
            TextSpan(text: "eT", style: TextStyle(color: Colors.white)),
          ]));
}

Widget WallpapersList({List<Wallpaper_model> wallpapers, context}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: GridView.count(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: wallpapers.map((wallpaper) {
        return GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ImageView(
                            imgUrl: wallpaper.src.portrait,
                          )));
            },
            child: Hero(
              tag: wallpaper.src.portrait,
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    wallpaper.src.portrait,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    ),
  );
}
