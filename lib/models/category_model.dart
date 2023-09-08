import 'dart:ui';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor
  });

  static List<CategoryModel> getCategories(){
    List<CategoryModel> categories = [];
    categories.add(CategoryModel(name: 'Salad', iconPath: "assets/1.jpg", boxColor: Color(0xff92A3FD)));
    categories.add(CategoryModel(name: 'Cake', iconPath: "assets/2.jpg", boxColor: Color(0xffC588F2)));
    categories.add(CategoryModel(name: 'Pie', iconPath: "assets/3.jpg", boxColor: Color(0xff92A3FD)));
    categories.add(CategoryModel(name: 'Smoothies', iconPath: "assets/4.jpg", boxColor: Color(0xffC588F2)));

    return categories;
  }
}