class Etudiant {

  // "late" Permet de creer une variable qui doit obligatoirement recevoir 
//une valeur avant son utilisation

  //late String prenom ;
  //late String nom;
  //late int matricule;
  //late double _moyenne; // private : _


// final permet de creer des constantes( quand on donne 
  //une valeur a une variable celle ci ne change plus)

  //final String prenom ;
  //final String nom;
  //final int matricule;
  //double _moyenne =  0;
  
// pas controle predefini 
  String prenom ;
  String nom;
  int matricule;
  double _moyenne =  0;
  double note ;


// CONSTRUCTEUR avec arguments positionnel
//Etudiant(this.prenom, this.nom,this.matricule, this._moyenne);

// CONSTRUCTEUR avec arguments nommée

Etudiant({
  // required permet de dire les variables sont obligatoires aussi si l'attribut est obligatoire
  //le constructeur avec argument nommé n'accepte pas les varible privées ( _moyenne)
  required this.prenom,
  required this.nom,
  required this.matricule,
  required this.note,
 
});

//double get moyenne => _moyenne ; 

    //   => = syntaxe courte de 
double get moyenne {
  return _moyenne ;
}
 


set moyenne (double x){
  if (x >= 0 && x <= 20){
    _moyenne = x; 
  } else {
    print("La moyenne doit etre entre 0 et 20");
  }
}
 
// creation d'une methode ToString
@override
String toString(){
  // TODO: implement toString

  return "$matricule : $prenom $nom a $_moyenne de moyenne";

}
// création d'une methode dans notre classe qui va se charger de prendre en paramètres la variable etudiant et nous retourner l'instance de l'objet

static Etudiant fromMap(Map<String, dynamic> et) {
  return Etudiant(
    prenom: et['prenom'],
    nom: et['nom'],
    matricule: et['matricule'],
    note: et['note'],
  );

}

}