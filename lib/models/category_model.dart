import 'dart:ui';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;
  String details;
  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
    required this.details
  });

  static List<CategoryModel> getCategories(){
    List<CategoryModel> categories = [];
    categories.add(CategoryModel(name: 'Salad', iconPath: "assets/1.svg", boxColor: Color(0xff92A3FD), details: 'Easy | 30mins | 180kCal'));
    categories.add(CategoryModel(name: 'Cake', iconPath: "assets/2.svg", boxColor: Color(0xffC588F2),details: 'Easy | 30mins | 180kCal'));
    categories.add(CategoryModel(name: 'Pie', iconPath: "assets/3.svg", boxColor: Color(0xff92A3FD), details: 'Easy | 30mins | 180kCal'));
    categories.add(CategoryModel(name: 'Smoothies', iconPath: "assets/4.svg", boxColor: Color(0xffC588F2) , details: 'Easy | 30mins | 180kCal'));

    return categories;
  }
}