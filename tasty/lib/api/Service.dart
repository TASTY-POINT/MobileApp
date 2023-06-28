import 'dart:convert';
import 'package:tasty/api/Promotion.dart';
import 'package:tasty/api/listFoodStores.dart';
import 'package:tasty/api/listPromotions.dart';
import 'package:tasty/api/listReviews.dart';
import 'package:tasty/api/Review.dart';

import 'package:tasty/api/listUsers.dart';
import 'package:http/http.dart' as http;
import 'FoodStore.dart';
import 'UserProfile.dart';


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

  static Future<List<Promotion>> getPromotions() async {
    final rspta = await http.get(Uri.parse("https://tastypointapi.azurewebsites.net/api/v1/promotion"));

    if (rspta.statusCode == 200) {
      final rsptaJson = json.decode(rspta.body);
      final todosPromotions = listadoP.listaPromotions(rsptaJson);
      return todosPromotions;
    }
    return <Promotion>[];
  }

  static Future<List<Review>> getReviews() async {
    final rspta = await http.get(Uri.parse("https://tastypointapi.azurewebsites.net/api/v1/comments"));

    if (rspta.statusCode == 200) {
      final rsptaJson = json.decode(rspta.body);
      final todosReviews = listadoR.listaReviews(rsptaJson);
      return todosReviews;
    }
    return <Review>[];
  }

  static Future<UserProfile?> getUserProfileByCredentials(String phoneNumber, String type) async {
    final response = await http.get(Uri.parse('https://tastypointapi.azurewebsites.net/api/v1/userprofile'));

    if (response.statusCode == 200) {
      final userProfileList = json.decode(response.body) as List<dynamic>;
      final userList = listadoU.listaUsers(userProfileList);

      for (var userProfile in userList) {
        if (userProfile.phoneNumber == phoneNumber && userProfile.type == type) {
          return userProfile;
        }
      }
    }
    return null;
  }

  static Future<List<Promotion>> getUserPromotions(int userId) async {
    final url = Uri.parse('https://tastypointapi.azurewebsites.net/api/v1/userprofile/$userId/promotions');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final responseJson = json.decode(response.body);
      final promotions = listadoP.listaPromotions(responseJson);
      return promotions;
    } else {
      throw Exception('Failed to get user promotions');
    }
  }





}