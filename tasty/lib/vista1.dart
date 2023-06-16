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
      backgroundColor: Color(0xFFEFBC3D),
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
              color: Color(0xFF3F1602),
            ),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFFFDFBEF),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFEFBC3D),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart ,
                color: Colors.black,
              ),
              title: Text(
                'Carrito',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                // Acciones al seleccionar "Carrito"
              },
            ),
            ListTile(
              leading: Icon(
                Icons.add,
                color: Colors.black,
              ),
              title: Text(
                'Perfil',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                // Acciones al seleccionar "Perfil"
              },
            ),
          ],
        ),
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
    );
  }

}