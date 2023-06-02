import 'package:flutter/material.dart';
import 'package:tasty/payment.dart';
import 'package:rounded_background_text/rounded_background_text.dart';
class PromotionDetailsPage extends StatelessWidget {
  final String title;
  final String image;
  final String subtitle;
  final String description;


  const PromotionDetailsPage({
    Key? key,
    required this.title,
    required this.image,
    required this.subtitle,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFBC3D),
      appBar: AppBar(
        backgroundColor: Color(0xFFEFBC3D),
        elevation: 0,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.menu,
                color: Color(0xff3f1602),
              ),
              onPressed:(){})
        ],

      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    child:
                    RoundedBackgroundText(
                      title,
                      style: const TextStyle(color:Color(0xffefbc3d),fontSize: 40,fontWeight: FontWeight.bold),
                      backgroundColor: Color(0xfffdfbef),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      image,
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.contain,  
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '\$' + subtitle,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      description,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 105,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        backgroundColor: Color(0xff3f1602)

                    ),
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: Color(0xFFFDFBEF),
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => CreditCardPage()),);
                    },)

                  // ... Otros detalles de la promoción
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
