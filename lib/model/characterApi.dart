
import 'package:dio/dio.dart';
import 'package:flutter_app/model/character.dart';

class CharacterApi {
  static Future<List> getCharacter() async{
    Response response = await Dio()
    .get("https://jsonplaceholder.typicode.com/todos/");
    List data  = response.data.map((i) => Character.fromJson(i)).toList();

    return data;
}
}