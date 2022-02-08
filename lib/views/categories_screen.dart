import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';


import '../controllers/product_controller.dart';
import 'categories_cards.dart';



class CategoriesScreen extends StatefulWidget {

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: .5,
        leading: IconButton(onPressed: (){},
            icon: Icon(
              Icons.list,
              color: Colors.black,
              size: 30,
            )
        ),
        title: Center(
          child: Text("Categories",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w900),
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              )
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
                size: 25,
              )
          )
        ],
      ),
      body:
        ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
          Expanded(
            child: Container(
              height:size.height,
            child: Obx(() {
            if (productController.isLoading.value)
            return Center(child: CircularProgressIndicator());
            else
            return SizedBox(
            child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            // crossAxisCount: 2,
            itemCount: 10,
            // crossAxisSpacing: 16,
            // mainAxisSpacing: 16,
            itemBuilder: (context,index) {
            return
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey[300])
                  ),
                ),
                height: 140,
                // color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      height: 140,
                      // margin: EdgeInsets.only(right: 30),
                      decoration: BoxDecoration(
                        color: Colors.white,

                        boxShadow:[

                          // BoxShadow(
                          //     color: Colors.grey[300],
                          //     offset: Offset(0,3),
                          //     spreadRadius: 10,
                          //     blurRadius: 10
                          // )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 60),
                        child: Text( productController.productList[index].category== null ? 'Beauty' : productController.productList[index].category.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width:20,),
                    AspectRatio(
                      aspectRatio: 4/3,
                      child: Image.network(productController.productList[index].imageLink,
                      ),
                    ),
                  ],

                ),
              );
            },
            // staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            ),
            );
            }),
            ),
          ),

          SizedBox(height: 10,),
          ],
        ),
    );
  }
}
