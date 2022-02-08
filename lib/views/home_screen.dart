import 'package:flutter/material.dart';
import 'package:shopx/views/women_screen.dart';

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          child: Text("Boutiqaat",
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
          children:[
            Container(
              height: 48,
              color: Colors.white,
              child: TabBar(
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(text: 'WOMEN',),
                  Tab(text: 'MEN',),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                  children: [
                    WomenScreen(),
                    WomenScreen(),
                  ]
              ),
            ),

          ]),
    );
  }
}
