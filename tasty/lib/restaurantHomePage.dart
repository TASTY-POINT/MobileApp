import 'package:flutter/material.dart';
import 'package:tasty/api/Service.dart';
import 'package:tasty/api/Promotion.dart';
import 'package:tasty/api/Review.dart';

class RestaurantPage extends StatefulWidget {
  final int userId;

  const RestaurantPage({Key? key, required this.userId}) : super(key: key);

  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  Future<List<Promotion>>? _promotionsFuture;
  Future<List<Review>>? _reviewsFuture;

  @override
  void initState() {
    super.initState();
    _promotionsFuture = service.getUserPromotions(widget.userId);
    _reviewsFuture = service.getReviews();
  }

  Future<List<Review>> _getReviewsByFoodStoreId(int foodstoreId) async {
    final reviews = await _reviewsFuture;
    if (reviews != null) {
      final filteredReviews = reviews.where((review) => review.foodStoreId == foodstoreId).toList();
      return filteredReviews;
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEFBC3D),
        appBar: AppBar(
          backgroundColor: Color(0xFFEFBC3D),
          elevation: 0,
          title: Text(
            "Your Products",
            style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
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
        body: Container(
        padding: EdgeInsets.all(16),
    child: Column(

    children: [

    Expanded(
    child: FutureBuilder<List<Promotion>>(
    future: _promotionsFuture,
    builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
    return Center(child: CircularProgressIndicator());
    } else if (snapshot.hasData) {
    final promotions = snapshot.data!;
    return ListView.builder(
    itemCount: promotions.length,
    itemBuilder: (context, index) {
    final promotion = promotions[index];
    return Container(
    color: Color(0xFFFDFBEF),
    padding: EdgeInsets.all(16),
    child: Row(
    children: [
    Image.network(
    promotion.image,
    width: 80,
    height: 80,
    ),
    SizedBox(width: 16),

    Expanded(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    children: [
    Text(
    promotion.title,
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),
    Spacer(),
    IconButton(
    icon: Icon(Icons.edit),
    onPressed: () {
    // Acción al presionar el botón de editar
    },
    ),
    IconButton(
    icon: Icon(Icons.add),
    onPressed: () {
    // Acción al presionar el botón de aumentar
    },
    ),
    IconButton(
    icon: Icon(Icons.delete),
    onPressed: () {
    // Acción al presionar el botón de eliminar
    },
    ),
    ],
    ),
    ],
    ),
    ),
    ],
    ),
    );
    },
    );
    } else {
      return Text('No promotions available.');
    }
    },
    ),
        ),
      Text(
        "Reviews",
        style: TextStyle(
          fontSize: 20,
          color: Color(0xff3f1602),
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(width: 16),
          SizedBox(height: 16),
          Expanded(
            child: FutureBuilder<List<Review>>(
              future: _getReviewsByFoodStoreId(widget.userId),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasData) {
                  final reviews = snapshot.data!;
                  return ListView.builder(
                    itemCount: reviews.length,
                    itemBuilder: (context, index) {
                      final review = reviews[index];
                      return Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              review.text,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow),
                                SizedBox(width: 4),
                                Text(
                                  'Rating: ${review.rate}',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return Text('No reviews available.');
                }
              },
            ),
          ),

          ],
        ),
    ),
    );
  }
}

