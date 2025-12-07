abstract class Personne {
  final String prenom;
  final String nom;
  final int matricule;

// constructeur
  Personne({
    required this.prenom,
    required this.nom,
    required this.matricule,
  }); 

  @override
  String toString() {
    return "Matricule : $matricule $prenom $nom";
  }
String getPrenom();
String getNom();
}