import 'package:flutter/material.dart';
class Celebrities extends StatefulWidget {

  @override
  _CelebritiesState createState() => _CelebritiesState();
}

class _CelebritiesState extends State<Celebrities> {
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
          child: Text("Celebrities",
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
          Center(child: Text('No celebrities available..',
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
