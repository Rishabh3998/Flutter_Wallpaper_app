import 'package:wallpaper_app/data/model/categoriesmodel.dart';

String apiKey = "563492ad6f9170000100000145be725d7ff14f27b7a7b64e07d100c7";

List<CategoriesModel> getCategories() {
  List<CategoriesModel> categories = new List();
  CategoriesModel categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/162379/lost-places-pforphoto-leave-factory-162379.jpeg?cs=srgb&dl=pexels-pixabay-162379.jpg&fm=jpg";
  categoriesModel.categoriesName = "Street Art";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/46168/space-telescope-mirror-segments-james-webb-cosmos-46168.jpeg?cs=srgb&dl=pexels-pixabay-46168.jpg&fm=jpg";
  categoriesModel.categoriesName = "Sci-fi";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/4061662/pexels-photo-4061662.jpeg?cs=srgb&dl=pexels-erik-mclean-4061662.jpg&fm=jpg";
  categoriesModel.categoriesName = "Marvel";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?cs=srgb&dl=pexels-james-wheeler-417074.jpg&fm=jpg";
  categoriesModel.categoriesName = "Nature";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/669988/pexels-photo-669988.jpeg?cs=srgb&dl=pexels-bich-tran-669988.jpg&fm=jpg";
  categoriesModel.categoriesName = "Motivation";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/247431/pexels-photo-247431.jpeg?cs=srgb&dl=pexels-pixabay-247431.jpg&fm=jpg";
  categoriesModel.categoriesName = "Wild Life";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl =
      "https://images.pexels.com/photos/1076758/pexels-photo-1076758.jpeg?cs=srgb&dl=pexels-pawel-kalisinski-1076758.jpg&fm=jpg";
  categoriesModel.categoriesName = "Marine Life";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  return categories;
}
