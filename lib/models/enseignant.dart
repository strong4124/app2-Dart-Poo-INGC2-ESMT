import 'package:app2/models/personne.dart';

class Enseignant extends Personne{
final String matiere;
Enseignant({
  required super.prenom,
  required super.nom,
  required super.matricule, 
  required this.matiere
});

@override
String getPrenom() {
  // TODO: implement getPrenom
  return this.prenom;
}

String getNom() {
  // TODO: implement getNom
  return this.nom;
}
}