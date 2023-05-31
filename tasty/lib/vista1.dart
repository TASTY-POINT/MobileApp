import 'package:flutter/material.dart';
import 'package:tasty/widgets/PopularFoodsWidget.dart';
import 'package:tasty/widgets/SearchWidget.dart';
import 'package:tasty/widgets/BestFoodWidget.dart';
class HomePage extends StatefulWidget {
  @override
  _vista1State createState() => _vista1State();
}

class _vista1State extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFEFBC3D),
      appBar: AppBar(
        backgroundColor: Color(0xFFEFBC3D),
        elevation: 0,
        title: Text(
          "Choose your food for today",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.menu,
                color: Color(0xff3f1602),
              ),
              onPressed:(){})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            PopularPromotionsWidget(),
            BestFoodStoreWidget(),
          ],
        ),
      ),
      //bottom bar
    );
  }
}
