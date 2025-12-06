import 'package:app2/models/etudiant.dart';
import 'package:app2/services/api_services.dart';

Future<void> main() async {
print("Salut le monde !");

//Etudiant e = Etudiant("Ibrahima", "Gueye", 2044, 18.5);

Etudiant e = Etudiant(
  matricule: 300,
  prenom: "Ibrahima",
   note: 18.5,
  nom: "Gueye",
 
);

print(e.prenom);
print(e.nom);
print(e.matricule);
print(e.note);


print ("-" * 100);

  print ("${e.prenom} ${e.nom} ${e.matricule} ${e.moyenne}");

  const annee = 2026; // déclaration d'une variable
  // $ permet d'acceder aux variables de types chaine de caractère

  print("Lannée est : $annee");
  print ("-" * 100);

e.moyenne = 18.4 ;
  print (e.toString());
  print("-" * 100);
  /**
   * quand on a plusieurs methodes dans une classe
   * lors de l'appel cc'est la methode tostring qui sera appelée
   * si elle exite
   */
  print (e);

Map<String, dynamic> etudiant = {
  // type dynamic = variable qui n'a pas de type precis
  "prenom" : "Abdoul Rachid",
  "nom" : "ZONGO",
  "matricule" : 506,
  "moyenne" : 18.5,
  "note" : 18.4
};
print ("-" * 100);
// affichage du Map
print ("affichage du Map");
print (etudiant["prenom"]);
print (etudiant["nom"]);
print (etudiant["matricule"]);
print (etudiant["moyenne"]);
print (etudiant["note"]);

// creation un objet à partir du Map
//
Etudiant e2 = Etudiant(
  matricule: etudiant["matricule"],
  prenom: etudiant["prenom"],
  nom: etudiant["nom"],
  note: etudiant["note"],
  
);

print ("|" * 100);
// affichage de l'objet
print ("La methode fromMap");
Etudiant e3 = Etudiant.fromMap(etudiant);
e3.moyenne = 19 ; 
print (e3.toString());

// crétion d'une liste d'etudiants
List<Map<String, dynamic>> etudiants = [
  {
    "prenom" : "Abdoul Rachid",
    "nom" : "ZONGO",
    "matricule" : 506,
    "moyenne" : 15,
    "note" : 17.4
  },
  {
    "prenom" : "Ibrahima",
    "nom" : "Gueye",
    "matricule" : 2044,
    "moyenne" : 18.5,
    "note" : 18.4
  }
];
// Parcours de la liste ( foreach;forin,for)
print("|" * 100);
print("utilisation de foreach");
etudiants.forEach((e){
 // Etudiant et = Etudiant.fromMap(e);
  //print(et.toString());
  print(Etudiant.fromMap(e).toString());
});
 print("|" * 100);
 print("utilisation de forin");
 // mot clé var qui permet de creer une variable dynamique 
 //late qui guarantit au compilateur  
 //que la variable sera initialiser avant l'utilisation
 // late la variable sera initialiser lors de l'utilisation
 for (var e in etudiants) {
   print(Etudiant.fromMap(e).toString());
 }
 /* pub.dev c'est le site ou on peut acceder pour obtenir les 
  packages qui nous permettent de faire les choses que nous voulons
 comme importer les contacts
 pour trouver un bon fournisseur il faut verifier :
 
fournisseur est vérifié ?
Depuis combien de temps il a fait la mise à jour ?
La note note du fournisseur /160
Les plateformes supporte (Android, Ios, etc.)
quel est le SDK accessible (flutter, dart, etc.)

*/

/**
 * on importe le package http
On va copier la dépendance puis la coller dans le fichier pubspec.yaml et cliquer sur get packages 
en haut a droite ou ecrire dans le terminal la commande suivante : 
dart pub get
 */

final result = await ApiServices.getData("https://jsonplaceholder.typicode.com/users");
List<Map<String, dynamic>> value = List<Map<String, dynamic>>.from(result);

print("|-" *100);
for (var e in value) {
  print("${e["name"]} ${e["username"]} ${e["email"]}");
}




}