import 'dart:convert';
import 'package:tasty/api/Promotion.dart';
import 'package:tasty/api/listFoodStores.dart';
import 'package:tasty/api/listPromotions.dart';
import 'package:http/http.dart' as http;
import 'FoodStore.dart';

class service{

  static Future<List<FoodStore>> getFoodStores() async{
    final rspta=await http.get(Uri.parse("https://tastypointapi.azurewebsites.net/api/v1/foodstores"));

    if(rspta.statusCode==200){
      final rsptaJson=json.decode(rspta.body);
      final todosFoodStores=listado.listaFoodStores(rsptaJson);
      return todosFoodStores;
    }
    return <FoodStore>[];
  }

  static Future<List<Promotion>> getPromotions() async{
    final rspta=await http.get(Uri.parse("https://tastypointapi.azurewebsites.net/api/v1/promotion"));

    if(rspta.statusCode==200){
      final rsptaJson=json.decode(rspta.body);
      final todosPromotions=listadoP.listaPromotions(rsptaJson);
      return todosPromotions;
    }
    return <Promotion>[];
  }
}