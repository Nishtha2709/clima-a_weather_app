import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{

  NetworkHelper(this.URL);
  final String URL;

   Future getData() async{
     http.Response response = await http.get(Uri.parse(URL));

     if(response.statusCode == 200){
       String data = response.body;
       return jsonDecode(data);
     }else{
       print(response.statusCode);
     }
   }

}