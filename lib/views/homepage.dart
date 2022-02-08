import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import '../controllers/product_controller.dart';
import 'bag_screen.dart';
import 'brands_screen.dart';
import 'categories_screen.dart';
import 'celebrities_screen.dart';
import 'home_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ProductController productController = Get.put(ProductController());

  int currentIndex =0;
  final List<Widget> _children =[
    Home(),
    Brands(),
    Celebrities(),
    CategoriesScreen(),
    Bag()
  ];

  void onTappedBar(int index){
    setState(() {
      currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.yellow[200],
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          currentIndex: currentIndex,
          onTap: onTappedBar,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Boutiqaat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.label),
              label: 'Brands',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Celebrities',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'My Bag',
            ),

          ],
        ),

        body:_children[currentIndex],        //
        // Column(
        //     children:[
        //       Container(
        //         height: 48,
        //         color: Colors.white,
        //         child: TabBar(
        //           unselectedLabelColor: Colors.grey,
        //           labelColor: Colors.black,
        //           indicatorColor: Colors.black,
        //           tabs: [
        //             Tab(text: 'WOMEN',),
        //             Tab(text: 'MEN',),
        //           ],
        //         ),
        //       ),
        //       Expanded(
        //         child: TabBarView(
        //             children: [
        //               WomenScreen(),
        //               WomenScreen(),
        //             ]
        //         ),
        //       ),
        //
        //     ]),
      ),
    );
  }
}
