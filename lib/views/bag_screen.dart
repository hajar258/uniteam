import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Bag extends StatefulWidget {

  @override
  _BagState createState() => _BagState();
}

class _BagState extends State<Bag> {
  @override
  Widget build(BuildContext context) {
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
          child: Text("My Bag",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('No products in the bag..',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey


            ),))
        ],
      ),
    );
  }
}
