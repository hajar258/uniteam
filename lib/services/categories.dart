

import '../models/product.dart';

class Categories1{
  List category = [];

  void setCategory( Product product){
    if(!category.contains(product.category)){
      category.add(product.category);
    }
  }
  List getCategory(){
    return category;
  }
}