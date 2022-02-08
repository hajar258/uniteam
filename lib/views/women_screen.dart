import'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';
import 'package:shopx/views/product_tile.dart';


import '../controllers/product_controller.dart';
import '../models/product.dart';
import 'categories_cards.dart';

class WomenScreen extends StatefulWidget {

  @override
  _WomenScreenState createState() => _WomenScreenState();
}

class _WomenScreenState extends State<WomenScreen> {
  final ProductController productController = Get.put(ProductController());
  List category = [];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return
      Expanded(
        child: ListView(
          children: [
            Container(
              width: size.width,
              height: size.height*0.3,
              child:Image.asset('images/offer1.webp'),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('CATEGORIES',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18
                    ),
                  ),
                  SizedBox(width: 215,),
                  Text('View All',
                    style: TextStyle(
                        color: Colors.yellow[700],
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width:125,),
                Container(
                  child: Text('jj'),
                  height: 1.5,
                  width:size.width*0.68,
                  color: Colors.black38,
                ),
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.all(16),
            //   // child: Row(
            //   //   children: [
            //   //     Expanded(
            //   //       child: Text(
            //   //         'ShopX',
            //   //         style: TextStyle(
            //   //             fontFamily: 'avenir',
            //   //             fontSize: 32,
            //   //             fontWeight: FontWeight.w900),
            //   //       ),
            //   //     ),
            //   //     IconButton(
            //   //         icon: Icon(Icons.view_list_rounded), onPressed: () {}),
            //   //     IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
            //   //   ],
            //   // ),
            // ),
            Expanded(
              child: Container(
                height: 170,
                // height: 366,
                child: Obx(() {
                  if (productController.isLoading.value)
                    return Center(child: CircularProgressIndicator());
                  else
                    return SizedBox(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        // crossAxisCount: 2,
                        itemCount: productController.productList.length,
                        // crossAxisSpacing: 16,
                        // mainAxisSpacing: 16,
                        itemBuilder: (context, index) {
                          setCategory(productController.productList[index]);
                          return Categories(productController.productList[index]);
                        },
                        // staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                      ),
                    );
                }),
              ),
            ),

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('BOUTIQAAT PICKES',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18
                    ),
                  ),
                  SizedBox(width: 150,),
                  Text('View All',
                    style: TextStyle(
                        color: Colors.yellow[700],
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width:135,),
                Container(
                  child: Text('jj'),
                  height: 1.5,
                  width:size.width*0.66,
                  color: Colors.black38,
                ),
              ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Container(
                height: 350,
                // height: 366,
                child: Obx(() {
                  if (productController.isLoading.value)
                    return Center(child: CircularProgressIndicator());
                  else
                    return SizedBox(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        // crossAxisCount: 2,
                        itemCount: productController.productList.length,
                        // crossAxisSpacing: 16,
                        // mainAxisSpacing: 16,
                        itemBuilder: (context, index) {
                          return ProductTile(productController.productList[index]);
                        },
                        // staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                      ),
                    );
                }),
              ),
            ),
          ],
        ),
      );

  }

  void setCategory(Product productList) {
    if (!category.contains(productList.category)) {
      category.add(productList.category);
    }
  }
}
