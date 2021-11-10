import 'dart:math';

void main() {

  Point point1 = Point(10, 2);
  Point point2 = Point(22, 11);
  num distance = point1.distanceTo(point2);
  
  // Nous avons accès aux propriétés x et y des
  // points grâce aux getters implicites :
  print(point1.x);
  print(point2.y);
  
  // Nous pouvons également modifier les points
  // grâce aux setters implicites :
  point1.x = 9;
  print(point1.x);

  Person jean = Person('Jean', 'Dupont');
  print(jean.fullName);
  
  jean.fullName = 'Paul Joseph';
  print(jean.prenom);
  print(jean.nom);

// utilisation d'extends
  Enfant enfant = new Enfant(); 
    enfant.direBonjour();

  
  
}

class Point {
  num x, y;

  Point(this.x, this.y);

  num distanceTo(Point autrePoint) {
    num dx = x - autrePoint.x;
    num dy = y - autrePoint.y;
    return sqrt(dx * dx + dy * dy);
  }
}

// définir ses propres getter et setter

class Person {
  String prenom, nom;
  
  Person(this.prenom, this.nom);
	
  // Nous créons un getter pour accéder au nom complet :
  String get fullName => '$prenom $nom';
  
  // Nous créons un setter pour extraire le prénom
  // et le nom d'un nom complet :
  set fullName(String nomComplet) {
  	prenom = nomComplet.split(' ')[0];
    nom = nomComplet.split(' ')[1];
  }
  
}

// Une classe hérite d'une autre classe en utilisant extends.

// La classe fille hérite de toutes les propriétés et les méthodes de la classe parente, mais pas de son constructeur.

class Parent { 
    void direBonjour() { 
      print("Bonjour !!"); 
    } 
}  
class Enfant extends Parent {}

// Le mot clé super permet de se référer à la classe parente :

class ClasseParente {
  void direBonjour() => print('Bonjour !');
}

class ClasseEnfant extends ClasseParente {
  
  direBonjourEtAuRevoir() {
    super.direBonjour();
    print('Au revoir !');
  }
  
}

