// class Point {
  // Déclaration d'une variable d'instance x de type num et initialisation à null :
  // num x;
  // Déclaration d'une variable d'instance y de type num et initialisation à 0 :
  // num y = 0; 

    // raccourci syntaxique pour déclarer deux variables du même type :
  // num x, y; 
// constructeur du même nom que la classe.
  // Point(num x, num y) {
  //   this.x = x;
  //   this.y = y;
  // }
 
// }

// main() {
//   var instance1 = new Point();
// ou car new est optionnel en Dart :
// var instance2 = Point();
// }

import 'dart:math';
// librairie mathematic, pour Point

void main() {

  // Créer deux instances de la classe Point :
  Point point1 = Point(10, 2);
  Point point2 = Point(22, 11);
  
  // Invoquer la méthode distanceTo :
  num distance = point1.distanceTo(point2);
  print(distance);

   Homme jean = Homme('Jean', 'Dupont');
  print(Homme.genre); // masculin
  Homme.direBonjour(); // Bonjour !
 // print(jean.genre); // Error: The getter 'genre' isn't defined for the class 'Homme'.
 // genre est déclaré statique donc utilisable seulement dans la classe
}

class Point {
  num x, y;

  Point(this.x, this.y);

  // Calcule la distance entre deux points 
  // sur un plan carthésien :
  num distanceTo(Point autrePoint) {
    num dx = x - autrePoint.x;
    num dy = y - autrePoint.y;
    return sqrt(dx * dx + dy * dy);
  }

}

class Homme {
  String prenom, nom;
  static const genre = 'masculin';
  
  Homme(this.prenom, this.nom);
  static direBonjour() => print('Bonjour !');
}

// Une classe est une interface par défault, implémenter une classe dans une classe

// Prenons une classe :
class ClasseA {
  String prop1;

  ClasseA(this.prop1);

  String methode1(String param) => 'Un $param.';
}

// La classe A a donc comme interface implicite, une propriété d'instance
// de type String, et une méthode qui prend en paramètre une String.

class ClasseB implements ClasseA {
  String prop1 = 'une valeur';
  String prop2 = "";

  String methode1(String param) => 'Retourne autre chose';
}
