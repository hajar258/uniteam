import 'package:flutter/material.dart';
class Brands extends StatefulWidget {

  @override
  _BrandsState createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
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
          child: Text("Brands",
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
          Center(child: Text('No Brands available..',
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
