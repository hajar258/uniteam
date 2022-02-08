import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/product.dart';



class Categories extends StatefulWidget {
  final Product product;
  const Categories(this.product);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 140,
        color: Colors.white,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 4/3,
              child: Image.network(widget.product.imageLink,
                ),
            ),
            SizedBox(height: 8,),
            Text( widget.product.category== null ? 'Beauty' : widget.product.category.toString(),
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],

        ),
      ),
    );
  }
}
