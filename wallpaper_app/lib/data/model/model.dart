class Wallpaper_model {
  String photographer;
  String photographer_url;
  int photographer_id;
  SrcModel src;

  Wallpaper_model(
      {this.src,
      this.photographer,
      this.photographer_id,
      this.photographer_url});

  factory Wallpaper_model.fromMap(Map<String, dynamic> jsonData) {
    return Wallpaper_model(
        src: SrcModel.fromMap(jsonData["src"]),
        photographer_url: jsonData["photographer_url"],
        photographer_id: jsonData["photographer_id"],
        photographer: jsonData["photographer"]);
  }
}

class SrcModel {
  String original;
  String small;
  String portrait;

  SrcModel({this.original, this.portrait, this.small});

  factory SrcModel.fromMap(Map<String, dynamic> jsonData) {
    return SrcModel(
        portrait: jsonData["portrait"],
        original: jsonData["original"],
        small: jsonData["small"]);
  }
}
