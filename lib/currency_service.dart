import 'dart:convert';
import 'package:api2/get_currency_service.dart';
import 'package:http/http.dart' as https;
import 'package:http/http.dart';

class CurrencyService {
  static Future<Welcome> getData() async {
    try{
      Response res = await https.get(Uri.parse("https://v2.jokeapi.dev/joke/Any?safe-mode"));
      if (res.statusCode == 200){
        Welcome welcome = Welcome.fromJson(jsonDecode(res.body));
        return welcome;
      }
      else {
        throw Exception();
      }
    }catch(e){
      throw Exception(e);
    }
  }
}
