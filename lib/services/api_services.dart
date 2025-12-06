import 'dart:convert';

import 'package:http/http.dart' as http;

// creation d'une classe qui permet de faire des appel depuis des api

class ApiServices{
  // un constructeur par defaut se construi si on definit pas de constructeur lors de sa création

  //methode static
  static dynamic getData(String  url) async {
// await = methode asynchrone ; une methode qui peut avoir de la latence
try{
  //put pour envoyer les données
  // post pour envoyer les donné 
  //delete pour supprimer des données
  //var apichaine = "https://jsonplaceholder.typicode.com/users";
  var response = await http.get(Uri.parse(url)); 
  // await est un fonction asynchrone qui permet de rester sur la ligne tant qu'on a pa s reponse
  if (response.statusCode == 200){

  var value = jsonDecode(response.body);
  return value ;
  }else{
    throw ("Code ${response.statusCode} Raison : ${response.reasonPhrase}");
  }

}catch(e, stackTrace){
  // stacktrace permet d'avoir plus de detail et  de savoir ou se trouve l'erreur
  print("$e , $stackTrace");
}



  }
}