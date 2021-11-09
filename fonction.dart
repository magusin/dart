main(List<String> arguments) {
  // fonction
  String foo() {
    return 'hello';
  }

  ;

  print(foo());

  direBonjour() {
    print('Bonjour');
  }

  direBonjour();

// Fonction fléchées

  void direBonjour1() => print('Bonjour');
  direBonjour1();

var nomComplet = getFullName('Jean', 'Dupont');
  print(nomComplet);

  // paramètre nommé

   var nomComplet1 = getFullName1(prenom: 'Jean');
  print(nomComplet);

  // fonction anonyme

   List<int> list = [1,2,3,4];
 
  list.forEach((item) {
    print(item);
  });
  
  // Ou encore avec une fonction fléchée anonyme :
  list.forEach((item) => print(item));
}
String getFullName(String prenom, String nom) {
  return "$prenom $nom";
}

String getFullName1({prenom, String nom = 'Inconnu'}) {
  return "$prenom $nom"; // Jean Inconnu
}


 



