import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

import '../models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(

          height: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            // color:,
            border: Border.all( color:Colors.black12,width: 1),
            borderRadius: BorderRadius.circular(15),
          ),

          width: MediaQuery.of(context).size.width*0.5,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 4/3,
                child: Image.network(product.imageLink,
                  ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left:8.0,right: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height:81,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(product.name,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(product.price +' BHD',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width:153,
                    height: 50,
                    color: Colors.black,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('BUY NOW', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17
                      ),),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      width:50.5,
                      height: 50,
                      color: Colors.black12,
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.favorite_border,color: Colors.black,size: 30,),
                      ),
                    ),
                  )
                ],
              )
            ],

          ),
        ),
      ),
    );
      ;
    //   Card(
    //   elevation: 2,
    //   child: Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Stack(
    //           children: [
    //             Container(
    //               height: 180,
    //               width: double.infinity,
    //               clipBehavior: Clip.antiAlias,
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(4),
    //               ),
    //               child: Image.network(
    //                 product.imageLink,
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //             Positioned(
    //               right: 0,
    //               child: Obx(() => CircleAvatar(
    //                     backgroundColor: Colors.white,
    //                     child: IconButton(
    //                       icon: product.isFavorite.value
    //                           ? Icon(Icons.favorite_rounded)
    //                           : Icon(Icons.favorite_border),
    //                       onPressed: () {
    //                         product.isFavorite.toggle();
    //                       },
    //                     ),
    //                   )),
    //             )
    //           ],
    //         ),
    //         SizedBox(height: 8),
    //         Text(
    //           product.name,
    //           maxLines: 2,
    //           style:
    //               TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
    //           overflow: TextOverflow.ellipsis,
    //         ),
    //         SizedBox(height: 8),
    //         if (product.rating != null)
    //           Container(
    //             decoration: BoxDecoration(
    //               color: Colors.green,
    //               borderRadius: BorderRadius.circular(12),
    //             ),
    //             padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
    //             child: Row(
    //               mainAxisSize: MainAxisSize.min,
    //               children: [
    //                 Text(
    //                   product.rating.toString(),
    //                   style: TextStyle(color: Colors.white),
    //                 ),
    //                 Icon(
    //                   Icons.star,
    //                   size: 16,
    //                   color: Colors.white,
    //                 ),
    //               ],
    //             ),
    //           ),
    //         SizedBox(height: 8),
    //         Text('\$${product.price}',
    //             style: TextStyle(fontSize: 32, fontFamily: 'avenir')),
    //       ],
    //     ),
    //   ),
    // );
  }
}
