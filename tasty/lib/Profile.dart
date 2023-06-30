import 'package:flutter/material.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  bool passwordVisible=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFEFBC3D),
      appBar: AppBar(
        backgroundColor: Color(0xff3f1602),
        elevation: 0,
        title: Text(
          "Bienvenido a Tasty Point :D",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Icon(
                      Icons.account_circle,
                      color: Color(0xff3f1602),
                      size: 180,
                    ),


                  )),

                ],
              ),
            ),



            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nombre",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3f1602),
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Expanded(child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top:10,left: 20, bottom: 10),
                            child: Text("Nombre", style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ))
                      ],
                    ),
                  ),

                  Text(
                    "Correo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3f1602),
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Expanded(child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top:10,left: 20, bottom: 10),
                            child: Text("correo@gmail.com", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                        ))
                      ],
                    ),
                  ),

                  Text(
                    "Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3f1602),
                      fontSize: 20,
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Expanded(child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top:10,left: 20, bottom: 10),
                            child: Text("contraseña", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                        ))
                      ],
                    ),
                  ),



                ],
              ),
            ),



            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          backgroundColor: Color(0xff3f1602)

                      ),
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        child: Text(
                          'Edit profile',
                          style: TextStyle(
                            color: Color(0xFFFDFBEF),
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            // package: 'flutter_credit_card',
                          ),
                        ),
                      ),
                      onPressed: (){
                       /* // Obtener los valores ingresados por el usuario en los campos de correo electrónico y contraseña
                        String phoneNumber = emailController.text;
                        String type = passwordController.text;

                       // Llamar al método para verificar las credenciales del usuario
                        loginUser(phoneNumber, type);    */
                      },

                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 250,
              child: Image(
                  image: AssetImage("assets/img/logo.png")
              ),
            )






          ],
        ),
      ),


    );
  }
}
