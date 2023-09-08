
import 'dart:ui';

import 'package:flutter/material.dart';

import '../models/category_model.dart';

class Home extends StatefulWidget{
    const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    List<CategoryModel> categories = [];

    void _getCategories(){
      categories = CategoryModel.getCategories();
    }

  @override
  Widget build(BuildContext context) {
    _getCategories();
   return Scaffold(
     appBar: _appBar(),
     backgroundColor: Colors.white,
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         _searchBox(),
         const SizedBox(height: 35),
         Container(
           margin: const EdgeInsets.only(left: 18),
           child: const Text(
             'Category',
             style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.w400
             ),
           ),
         ),
         Container(
           height: 150,
           margin: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
           child: ListView.separated(
               itemCount: categories.length,
               scrollDirection: Axis.horizontal,
               padding: EdgeInsets.only(left: 20, right: 20),
               separatorBuilder: (context, index) => const SizedBox(width: 25,),
               itemBuilder: (context, index){
                  return Container(
                    width: 120,
                    decoration: BoxDecoration(
                      color: categories[index].boxColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width:50,
                          height:50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(categories[index].iconPath),
                            ),
                          )
                        ),
                        Text(
                          categories[index].name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),
                  );
           }),
         )
       ],
     ),
   );
  }

  Widget _searchBox(){
    return Container(
      margin: const EdgeInsets.only(top: 40, left:20, right:20),
      decoration: BoxDecoration(
          boxShadow:[ BoxShadow(
            color: Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0,
          )]
      ),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: const Icon(Icons.search_sharp),
            contentPadding: const EdgeInsets.all(15),
            hintText: 'Search here...',
            hintStyle: TextStyle(fontSize: 20, color: Color(0xffDDDADA)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
            )
        ),
      ),
    );
  }

  AppBar _appBar(){
    return AppBar(
      title: const Text(
        'Breakfast',
        style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontFamily: 'Arial'
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: (){},
        child: Container(
          margin: const EdgeInsets.all(10),
          width: 20,
          height: 20,
          alignment: Alignment.center,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}